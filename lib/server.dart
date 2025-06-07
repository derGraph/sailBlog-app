import 'package:flutter/material.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/main.dart';
import 'package:sailblog/settings.dart';

import 'package:dio/dio.dart';

Server server = Server();
BaseOptions dioBaseOptions = BaseOptions(
  baseUrl: 'https://sailblog.dergraph.at',
  headers: {
    'Host': "sailblog.dergraph.at",
    'Cookie': 'auth_session=${settings.cookie}',
  },
);
Dio dio = Dio(dioBaseOptions);

class Server {
  bool loginUnderway = false;

  Future<int> login() async {
    if (loginUnderway) {
      return -2;
    }
    loginUnderway = true;
    await showDialog(
        context: NavigationService.navigatorKey.currentContext!,
        builder: (context) => const LoginPopup());
    if (settings.cookie == "") {
      return -2;
    }
    return 0;
  }

  Future<int> uploadDatapoints({bool allowLogin = false}) async {
    List<DatapointLocal> datapoints =
        (await database.getUploadableDatapoints()).toList();
    Map<String, Map<String, dynamic>> jsonData = {};

    if (datapoints.isEmpty) {
      return 0;
    }

    for (var datapoint in datapoints) {
      if (datapoint.id != null) {
        String id = "";
        id = datapoint.id!;
        jsonData[id] = datapoint.toJson();
        jsonData[id]!["time"] =
            datapoint.time?.millisecondsSinceEpoch.toString();
      }
    }
    if (settings.cookie == "" && allowLogin && database.connected) {
      return await login();
    }
    List<String> acceptedDatapoints = [];
    List<String> differentDatapoints = [];
    Response response;
    try {
      dioBaseOptions = BaseOptions(
          baseUrl: 'https://sailblog.dergraph.at',
          headers: {
            'Host': "sailblog.dergraph.at",
            'Cookie': 'auth_session=${settings.cookie}',
          },
        );
        dio = Dio(dioBaseOptions);
      response = await dio.post("/api/Datapoints", data: jsonData);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.badResponse) {
        response = e.response!;
      } else {
        return -1;
      }
    }
    switch (response.statusCode) {
      case 401:
        database.log("Not logged in or invalid cookie!");
        //await settings.setCookie("");
        return -2;
      case 400:
        if (response.data is! Map<String, dynamic>) {
          database.log(
              "Unexpected Server answer retrying: ${response.data.toString()}");
          break;
        }
        Map<String, dynamic> results = response.data;
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
            "Upload Datapoint Error: ${response.statusCode}: ${response.data}");
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
    int uploadedDatapoints = 1;
    while (uploadedDatapoints > 0) {
      uploadedDatapoints = await uploadDatapoints(allowLogin: true);
    }
    return;
  }

  Future<int?> loginRequest(String username, String password) async {
    await database.log("Logging in as $username!");
    Response response;
    try {
      FormData formData = FormData.fromMap({
        'identifier': username,
        'password': password,
      });
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
        await settings.setCookie(response.headers["set-cookie"]![0]
            .replaceAll("auth_session=", "")
            .split(";")[0]);
        dioBaseOptions = BaseOptions(
          baseUrl: 'https://sailblog.dergraph.at',
          headers: {
            'Host': "sailblog.dergraph.at",
            'Cookie': 'auth_session=${settings.cookie}',
          },
        );
        dio = Dio(dioBaseOptions);
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
