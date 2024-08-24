import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:orm/orm.dart';
import 'package:sailblog/_generated_prisma_client/prisma.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:latlong2/latlong.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
// ignore: unused_import
import 'package:permission_handler/permission_handler.dart' as permission;
import 'package:orm_flutter/orm_flutter.dart';
import '_generated_prisma_client/client.dart';
import 'package:requests/requests.dart';

late final PrismaClient prisma;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sailBlog',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'sailBlog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Location location = Location();

  Set state = {"sailing"};
  StreamSubscription<LocationData>? locationSubscription;
  String logText = "";
  bool startRunning = false;
  String? cookie;
  bool firstLoad = true;
  SharedPreferences? prefs;
  DateTime? lastUpload;
  DateTime? lastCoordinate;
  LatLng? lastLocation;
  int interval = 0;
  double distance = 0;
  int uploadInterval = 0;
  bool db = false;
  bool uploadRunning = false;

  Future<void> changeState(Set selection) async {
    if (!setEquals(selection, {"off"})) {
      lastLocation = null;
      lastCoordinate = null;
      lastUpload = null;
      if (setEquals(selection, {"anchor"})) {
        //more than 0.5 meters moved; upload every 10sec.
        interval = 600;
        distance = 0.5;
        uploadInterval = 10;
        await startGps();
      } else {
        //under motor/sail more than 10 meters moved; upload every 5min
        interval = 300;
        distance = 10;
        uploadInterval = 300;
        await startGps();
      }
    } else {
      startRunning = false;
      if (locationSubscription != null) {
        if (!locationSubscription!.isPaused) {
          await locationSubscription?.cancel();
          await location.enableBackgroundMode(enable: true);
          log("Location stream closed!");
          locationSubscription = null;
        }
      }
    }
    setState(() {
      state = selection;
      prefs?.setString("state",
          selection.toString().replaceAll("{", "").replaceAll("}", ""));
    });
  }

  Future<void> startGps() async {
    if (startRunning) {
      return;
    }
    startRunning = true;
    log("Starting GPS reciever!");
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      log("Requesting service enabling!");
      try {
        serviceEnabled = await location.requestService();
      } catch (e) {
        log("Could not request location service! Please enable GPS manually!");
      }
      if (!serviceEnabled) {
        log("Service must be enabled!");
        startRunning = false;
        return;
      }
      log("Service enabled!");
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      log("Requesting location enabling!");
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        log("Location must be enabled!");
        startRunning = false;
        return;
      }
      log("Location enabled!");
    }
    if(await permission.Permission.locationAlways.status == permission.PermissionStatus.denied){
      await permission.Permission.locationAlways.request();
      if(await permission.Permission.locationAlways.status == permission.PermissionStatus.denied){
        log("Location in Background must always be allowed!");
        startRunning = false;
        return;
      }
    }

    log("Attatching to location stream!");
    await locationSubscription?.cancel();
    await location.enableBackgroundMode(enable: true);
    await location.changeSettings(
        accuracy: LocationAccuracy.high, interval: 10, distanceFilter: 0);
    await location.changeNotificationOptions(
      title: 'sailBlog',
      subtitle: 'sailBlog is recording!',
    );
    locationSubscription = location.onLocationChanged.listen(locationListener);
    startRunning = false;
  }

  Future<void> locationListener(LocationData currentLocation) async {
    lastUpload ??= DateTime.now().subtract(const Duration(days: 1));
    lastCoordinate ??= DateTime.now().subtract(const Duration(days: 1));
    lastLocation ??= const Distance().offset(
        LatLng(currentLocation.latitude!, currentLocation.longitude!),
        2000,
        180);
    LatLng currentLatLong =
        LatLng(currentLocation.latitude!, currentLocation.longitude!);

    if (DateTime.now().difference(lastCoordinate!).inSeconds >= interval ||
        const Distance().as(LengthUnit.Meter, currentLatLong, lastLocation!) >
            distance) {
      lastCoordinate = DateTime.now();
      lastLocation = currentLatLong;
      // REGISTER DATAPOINT
      if (setEquals(state, {"anchor"}) ||
          setEquals(state, {"motor"}) ||
          setEquals(state, {"sailing"})) {
        await prisma.datapointLocal.create(
          data: PrismaUnion.$1(DatapointLocalCreateInput(
              lat: Decimal.fromJson(currentLocation.latitude.toString()),
              long: Decimal.fromJson(currentLocation.longitude.toString()),
              hAccuracy: PrismaUnion.$1(
                  Decimal.fromJson(currentLocation.accuracy.toString())),
              vAccuracy: PrismaUnion.$1(Decimal.fromJson(
                  currentLocation.verticalAccuracy.toString())),
              heading: PrismaUnion.$1(
                  Decimal.fromJson(currentLocation.heading.toString())),
              speed: PrismaUnion.$1(
                  Decimal.fromJson(currentLocation.speed.toString())),
              propulsion: PrismaUnion.$1(
                  state.toString().replaceAll("{", "").replaceAll("}", "")))),
        );
        log(currentLocation.toString());
      }
    }

    if (DateTime.now().difference(lastUpload!).inSeconds >= uploadInterval &&
        !uploadRunning) {
      lastUpload = DateTime.now();
      uploadRunning = true;
      log("Uploading!");
      if (db) {
        /*var status = await permission.Permission.storage.request();
        while (!status.isGranted) {
          log("Storage permission is needed!");
          if (status.isPermanentlyDenied) {
            log("Please enable storage permission in settings!");
            await permission.openAppSettings();
            break;
          } else {
            status = await permission.Permission.storage.request();
          }
        }*/
      }
      var uploadableDatapoints = await prisma.datapointLocal.findMany(
          where: const DatapointLocalWhereInput(uploaded: PrismaUnion.$2(0)),
          take: 500);

      Map<String, Map<String, dynamic>> jsonData = {};
      for (var datapoint in uploadableDatapoints) {
        if (datapoint.id != null) {
          String id = "";
          id = datapoint.id!;
          jsonData[id] = datapoint.toJson();
          jsonData[id]!["time"] =
              datapoint.time?.millisecondsSinceEpoch.toString();
        }
      }
      try {
        var response = await Requests.post(
          "https://sailblog.dergraph.at/api/Datapoints",
          json: jsonData,
          headers: {'Cookie': 'auth_session=$cookie'},
        ).timeout(const Duration(seconds: 30));
        switch (response.statusCode) {
          case 401:
            log("Not logged in, please login first!");
            changeState({"off"});
            loginDialog();
            break;
          case 400:
            Map<String, dynamic> results = json.decode(response.body);
            results.forEach((key, value) async {
              if (value != "OK") {
                if (value ==
                    "Error: This element already exists with the same data!") {
                  await markDatapointUploaded(key, 1);
                  //log("Datapoint already on server, marked as uploaded!");
                } else if (value ==
                    "Error: This element already exists, with different data! Edit via Datapoint PUT-Request!") {
                  await markDatapointUploaded(key, 2);
                  //log("Datapoint with other data already on server! Keeping server Version! id:$key");
                } else {
                  log("Unhandled error message!\n $key: $value");
                }
              }
            });
            break;
          case 200:
            Map<String, dynamic> results = json.decode(response.body);
            results.forEach((key, value) async {
              if (value == "OK") {
                await markDatapointUploaded(key, 1);
              }
            });
            break;
          default:
            log("Uncought status code: ${response.statusCode} with message: ${response.body}");
        }
      } catch (errorMessage) {
        log(errorMessage.toString());
        uploadRunning = false;
      }
      uploadRunning = false;
      log("Uploading finished!");
      setState(() {/* The animation changed. */});
    }
  }

  Future<void> markDatapointUploaded(String id, int type) async {
    try {
      await prisma.datapointLocal.update(
          where: DatapointLocalWhereUniqueInput(id: id),
          data: PrismaUnion.$2(DatapointLocalUncheckedUpdateInput(
              uploaded: PrismaUnion.$1(type))));
    } catch (errorMessage) {
      log(errorMessage.toString());
    }
  }

  Future<void> login(String username, String password) async {
    log("Logging in as $username!");
    try{
      var response = await Requests.post(
        "https://sailblog.dergraph.at/sign_in",
        body: <String, String>{'identifier': username, 'password': password},
      );
      var body = jsonDecode(response.body);
      var status = body["status"];
      if (status != 302) {
        var errorMessage = body["data"].toString();
        log("Error whilst logging in: $status Message: $errorMessage");
      } else {
        log("Logged in!");
        prefs?.setString(
            "cookie",
            response.headers["set-cookie"]
                .toString()
                .split(";")[0]
                .replaceAll("auth_session=", ""));
        cookie = prefs?.getString("cookie");
        log("Cookie Saved!");
      }
    }catch(e){
      log(e.toString());
    }
  }

  Future<void> loginDialog() async {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("LOGIN"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(hintText: "username"),
                ),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(hintText: "password"),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  login(usernameController.text.toString(),
                      passwordController.text.toString());
                },
                child: const Text("OK"),
              ),
            ],
          );
        });
  }

  void log(String message) {
    DateFormat df = DateFormat('HH:mm:ss');
    setState(() {
      logText = "${df.format(DateTime.now())}  $message\n$logText";
    });
  }

  Future<void> initDB() async {
    WidgetsFlutterBinding.ensureInitialized();
    final supportDir = await getExternalStorageDirectory();
    final database = path.join(supportDir!.path, 'database.sqlite.db');
    log(database);
    prisma = PrismaClient(datasourceUrl: 'file:$database');
    final engine = switch (prisma.$engine) {
      LibraryEngine engine => engine,
      _ => null,
    };

    await prisma.$connect();
    await engine?.applyMigrations(path: 'prisma/migrations');
    db = true;
  }

  @override
  Widget build(BuildContext context) {
    if (firstLoad) {
      firstLoad = false;
      SharedPreferences.getInstance().then((value) async {
        prefs = value;
        log("Previous State:${prefs!.getString("state")}");
        state = {prefs?.getString("state")};
        cookie = prefs?.getString("cookie");
        initDB();
        Future.delayed(Duration.zero, () async {
          changeState(state);
        });
      });
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                    Theme.of(context).secondaryHeaderColor),
              ),
              onPressed: loginDialog,
              child: const Text("login"),
            ),
            SegmentedButton(
              segments: const <ButtonSegment>[
                ButtonSegment(value: "off", label: Icon(Icons.close)),
                ButtonSegment(value: "anchor", label: Icon(Icons.anchor)),
                ButtonSegment(value: "sailing", label: Icon(Icons.sailing)),
                ButtonSegment(
                    value: "motor", label: Icon(Icons.directions_boat))
              ],
              selected: state,
              onSelectionChanged: (changeState),
            ),
            Container(
              width: 300,
              height: 500,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
              child: SingleChildScrollView(child: Text(logText)),
            )
          ],
        ),
      ),
    );
  }
}
