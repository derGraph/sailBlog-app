import 'package:flutter/material.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/main.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as permission;

LocationService locationService = LocationService();

class LocationService {
  Location location = Location();

  void init() {
    _handlePermissions();
  }

  Future<bool> _handlePermissions() async {
    await database
        .log("locationService: Trying to get location Service permission!");
    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        await database
            .log("locationService: Location Service permission denied!");
        _alert("Error: you have to allow GPS Service!");
        return false;
      }
    }
    await database.log("locationService: Location Service permission granted!");

    await database.log("locationService: Trying to get GPS permission!");
    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted == PermissionStatus.deniedForever) {
        await database.log("locationService: GPS permission denied forever!");
        _alert(
            "Error: you have to allow GPS Service! Open App settings and allow GPS all the time!");
      } else if (permissionGranted != PermissionStatus.granted) {
        _alert("Error: you have to allow GPS Service!");
        await database.log("locationService: GPS permission denied!");
        return false;
      }
    }
    await database.log("locationService: GPS granted!");

    await database
        .log("locationService: Trying to get location Background access!");
    await _alert(
        "We are going to open the settings page. Make sure to click 'Allow all the time'");
    if (await permission.Permission.locationAlways.status !=
        permission.PermissionStatus.granted) {
      await permission.Permission.locationAlways.request();
      if (await permission.Permission.locationAlways.status !=
          permission.PermissionStatus.granted) {
        await database.log("locationService: Background access was denied!");
        _alert("Location in Background must always be allowed!");
        return false;
      }
    }
    await database.log("locationService: Background access was granted!");
    await database.log("locationService: All permissions are granted!");
    return true;
  }

  Future<void> _alert(String message) async {
    // Alert dialog function
    await showDialog(
      context: NavigationService.navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Location Service"),
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
