import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/main.dart';
import 'package:sailblog/settings.dart';

import 'package:dio/dio.dart';

Server server = Server();

class Server {
  bool loginUnderway = false;
  var httpClient = http.Client();

  Future<int> login() async {
    if (loginUnderway) {
      return -2;
    }
    loginUnderway = true;
    await showDialog(
        context: NavigationService.navigatorKey.currentContext!,
        builder: (context) => const LoginPopup());
    appSettings.init();
    if (appSettings.cookie == "") {
      return -2;
    }
    return 0;
  }

  Future<int> uploadDatapoints({bool allowLogin = false}) async {
    List<DatapointLocal> datapoints =
        (await database.getUploadableDatapoints()).toList();
    Map<String, Map<String, dynamic>> jsonData = {};

    //database.log("Uploading Datapoints!");

    if (datapoints.isEmpty) {
      //database.log("No Datapoints to upload!");
      return 0;
    }

    for (var datapoint in datapoints) {
      if (datapoint.id != null) {
        if(datapoint.propulsion! < 3) {
          String id = "";
          id = datapoint.id!;
          jsonData[id] = datapoint.toJson();
          jsonData[id]!["time"] =
            datapoint.time?.millisecondsSinceEpoch.toString();
        }
      }
    }

    if(appSettings.cookie == "") {
      database.log("Not Cookie found!");
    }

    if (appSettings.cookie == "" && allowLogin && database.connected) {
      return await login();
    }

    database.log("Sending request!");
    List<String> acceptedDatapoints = [];
    List<String> differentDatapoints = [];
    // Response response;
    http.Response response;
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Cookie': 'session_token=${appSettings.cookie}',
    };

    try {
      var url = Uri.https(appSettings.serverIp.replaceAll("https://", ""), 'api/Datapoints');
      response = await httpClient.post(url, headers: headers, body: jsonEncode(jsonData));
    } catch (e) {
      database.log(e.toString());
      return -1;
    }

    switch (response.statusCode) {
      case 401:
        database.log("Not logged in!");
        return -2;
      case 400:
        Map<String, dynamic> results = {};
        // Check if response is JSON
        if (response.headers['content-type']?.contains('application/json') ?? false) {
          try {
            results = jsonDecode(response.body);
          } catch (e) {
            await database.log("HTTP Response was not valid JSON!");
            return -1;
          }
        } else {
          await database.log("HTTP Response header not JSON!");
          return -1;
        }
        
        results.forEach((key, value) async {
          if (value != "OK") {
            if (value ==
                "Error: This element already exists with the same data!") {
              acceptedDatapoints.add(key);
            } else if (value ==
                "Error: This element already exists, with different data! Edit via Datapoint PUT-Request!") {
              differentDatapoints.add(key);
            } else {
              await database.log("Unhandled error message!\n $key: $value");
            }
          } else {
            acceptedDatapoints.add(key);
          }
        });
        break;
      case 200:
        for (DatapointLocal datapoint in datapoints) {
          acceptedDatapoints.add(datapoint.id.toString());
        }
        database.log("Uploaded!");
        break;
      default:
        database.log(
            "Upload Datapoint Error: ${response.statusCode}: ${response.body}");
        return -1;
    }

    await database.setDatapointsUploaded(acceptedDatapoints, 1);
    if (differentDatapoints.isNotEmpty) {
      await database.setDatapointsUploaded(differentDatapoints, 2);
    }

    database.log("Uploaded datapoints: ${acceptedDatapoints.toString()}");
    if (differentDatapoints.isNotEmpty) {
      database.log("Different datapoints: ${differentDatapoints.toString()}");
    }
    return acceptedDatapoints.length;
  }

  Future<void> uploadAllDatapoints() async {
    database.log("Uploading all Datapoints!");
    int uploadedDatapoints = 1;
    while (uploadedDatapoints > 0) {
      uploadedDatapoints = await uploadDatapoints(allowLogin: true);
    }
    return;
  }

  Future<int?> loginRequest(String username, String password) async {
    await database.log("Logging in as $username!");
    await appSettings.init();
    Response response;
    try {
      FormData formData = FormData.fromMap({
        'identifier': username,
        'password': password,
      });
      BaseOptions dioBaseOptions = BaseOptions(
        baseUrl: appSettings.serverIp,
      );
      Dio dio = Dio(dioBaseOptions);
      response = await dio.post('/sign_in', data: formData);
    } on DioException catch (e) {
      response = e.response!;
      database.log(e.toString());
    }
    switch (response.statusCode) {
      case 404:
        database.log("Couldn't find server! 404");
        loginUnderway = false;
        return 404;
      case 200:
      case 302:
        await appSettings.setCookie(response.headers["set-cookie"]![0]
            .replaceAll("session_token=", "")
            .split(";")[0]);
        await database.log("Logged in!");
        loginUnderway = false;
        return 302;
      default:
        await database.log(
            "Error whilst logging in: ${response.statusCode.toString()} Message: ${response.toString()}");
        loginUnderway = false;
        return response.statusCode;
    }
  }

  Future<void> sendErrorMsg(String message) async {
    await showDialog(
      context: NavigationService.navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Server"),
          content: Text(message),
          actions: [
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class LoginPopup extends StatelessWidget {
  const LoginPopup({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return AlertDialog(
      title: const Text('Login'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email/Username'),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 10),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            server.loginUnderway = false;
            Navigator.of(context).pop(); // Close the popup
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            final email = emailController.text;
            final password = passwordController.text;

            // Handle the login logic here
            server
                .loginRequest(email, password)
                .then((result) => {database.log("Stored Cookie!")});
            Navigator.of(context).pop(); // Close the popup after login
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}
