import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:sailblog/pages/alarm.dart';
import 'package:sailblog/pages/record.dart';
import 'package:sailblog/pages/settings.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/location_service.dart';

MainApp mainApp = MainApp();

void main() async {
  await database.init();
  FlutterForegroundTask.initCommunicationPort();
  await initializeMap();
  runApp(MaterialApp(home: mainApp));
}

Future<void> initializeMap() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await FMTCObjectBoxBackend().initialise();
    await FMTCStore('mapStore').manage.create();
  } catch (error, stackTrace) {
    await database.log("FTMC Error: ${error.toString()}, ${stackTrace.toString()}");
  }

  await database.log("Map storage Initialized!");
}

class NavigationService {
  static final navigatorKey = GlobalKey<NavigatorState>();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey, // line of interest
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;
  static final List<Widget> _pages = <Widget>[
    const RecordPage(),
    const AlarmPage(),
    const SettingsPage()
  ];

  // add init state here
  @override
  void initState() {
    super.initState();
    // Add a callback to receive data sent from the TaskHandler.
    FlutterForegroundTask.addTaskDataCallback(
        locationService.backgroundReciever);
  }

  void _pageSelected(int i) {
    setState(() {
      _selectedPage = i;
    });
  }

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
        appBar: AppBar(title: const Text('sailBlog')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('DRAWER HEADER'),
              ),
              ListTile(
                title: const Text('Record'),
                onTap: () {
                  _pageSelected(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Alarm'),
                onTap: () {
                  _pageSelected(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  _pageSelected(2);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: _pages[_selectedPage]);
  }
}
