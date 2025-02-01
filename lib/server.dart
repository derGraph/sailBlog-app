import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/main.dart';
import 'package:sailblog/settings.dart';

import 'package:http/http.dart' as http;

Server server = Server();

class Server {
  static const String url = "https://sailBlog.dergraph.at";
  //static const String url = "http://192.168.0.7:5173";
  bool loginUnderway = false;

  Future<int> uploadDatapoints() async {
    List<DatapointLocal> datapoints =
        (await database.getUploadableDatapoints()).toList();
    Map<String, Map<String, dynamic>> jsonData = {};

    for (var datapoint in datapoints) {
      if (datapoint.id != null) {
        String id = "";
        id = datapoint.id!;
        jsonData[id] = datapoint.toJson();
        jsonData[id]!["time"] =
            datapoint.time?.millisecondsSinceEpoch.toString();
      }
    }
    if (settings.cookie == "") {
      if (loginUnderway) {
        return -2;
      }
      loginUnderway = true;
      await showDialog(
          context: NavigationService.navigatorKey.currentContext!,
          builder: (context) => const LoginPopup());
    }

    List<String> acceptedDatapoints = [];
    List<String> differentDatapoints = [];

    try {
      var response = await http.post(Uri.parse("$url/api/Datapoints"),
          body: jsonEncode(jsonData),
          headers: {
            "Cookie": 'auth_session=${settings.cookie}',
            "Content-Type": 'application/json; charset=UTF-8'
          });
      switch (response.statusCode) {
        case 401:
          database.log("Not logged in or invalid cookie!");
          settings.setCookie("");
          return -2;
        case 400:
          Map<String, dynamic> results = json.decode(response.body.toString());
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
            }
          });
          break;
        case 200:
          for (DatapointLocal datapoint in datapoints) {
            acceptedDatapoints.add(datapoint.id.toString());
          }
          break;
        default:
          database.log(
              "Upload Datapoint Error: ${response.statusCode}: ${response.body}");
          return -1;
      }
    } catch (exception) {
      database.log("Upload Datapoints error: ${exception.toString()}");
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
    int uploadedDatapoints = -2;
    while (uploadedDatapoints > 0 || uploadedDatapoints == -2) {
      uploadedDatapoints = await _uploadDatapoints();
    }
    return;
  }

  Future<int> login(String username, String password) async {
    database.log("Logging in as $username!");
    try {
      var response = await http.post(
        Uri.parse("$url/sign_in"),
        body: <String, String>{'identifier': username, 'password': password},
      );
      if (response.statusCode != 404) {
        final body = jsonDecode(response.body);
        if (body["status"] == 302) {
          settings.setCookie(response.headers["set-cookie"]
              .toString()
              .split(";")[0]
              .replaceAll("auth_session=", ""));
          loginUnderway = false;
          return 302;
        }
        var errorMessage = response.body.toString();
        database.log(
            "Error whilst logging in: ${response.statusCode.toString()} Message: $errorMessage");
        loginUnderway = false;
        return body["status"];
      } else {
        database.log("Couldn't find server! 404");
        loginUnderway = false;
        return 404;
      }
    } catch (e) {
      database.log(e.toString());
    }
    loginUnderway = false;
    return 400;
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
                .login(email, password)
                .then((result) => {database.log("Stored Cookie!")});
            Navigator.of(context).pop(); // Close the popup after login
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}
