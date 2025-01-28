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

  Future<void> uploadDatapoints() async {
    List<DatapointLocal> datapoints = (await database.getDatapoints()).where((datapoint) => datapoint.uploaded == 0).toList();
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
    //await login("derGrapha", "12PbPjSSi16!");
    if(settings.cookie == ""){
      await showDialog(context: NavigationService.navigatorKey.currentContext!, builder: (context)=> const LoginPopup());
    }
    //database.log(jsonData.toString());
  }

  Future<int> login(String username, String password) async {
    database.log("Logging in as $username!");
    try{
      var response = await http.post(
        Uri.parse("$url/sign_in"),
        body: <String, String>{'identifier': username, 'password': password},
      );
      if (response.statusCode != 404) {
        final body = jsonDecode(response.body);
        database.log(body["status"]);
        if(body["status"] != "302"){
          //settings.setCookie(response.headers)
          database.log(response.headers.toString());
          return 302;
        }
        var errorMessage = response.body.toString();
        database.log("Error whilst logging in: ${response.statusCode} Message: $errorMessage");
        return body["status"];
      } else {
        database.log("Logged in!");
        settings.setCookie(response.headers["set-cookie"]
                .toString()
                .split(";")[0]
                .replaceAll("auth_session=", ""));

        database.log("Cookie Saved!");
        return 301;
      }
    }catch(e){
      database.log(e.toString());
    }

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
          onPressed: () async {
            final email = emailController.text;
            final password = passwordController.text;

            // Handle the login logic here
            await server.login(email, password);
            Navigator.of(context).pop(); // Close the popup after login
          },
          child: const Text('Login'),
        ),
      ],
    );
  }
}