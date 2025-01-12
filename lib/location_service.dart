import 'dart:async';
import 'package:background_location/background_location.dart';
import 'package:flutter/material.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/main.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sailblog/pages/settings.dart';
import 'package:sailblog/recorder.dart';

LocationService locationService = LocationService();

class LocationService {
  Future<void> start() async {
    if (settings.ownSource) {
      if (!await _handlePermissionsSelf()) {
        _alert("You have to allow all permissions!");
        return;
      }

      await BackgroundLocation.setAndroidNotification(
        title: "sailBlog GPS recorder",
        message:
            "While this Notification is shown, sailBlog can record your position!",
        icon: "@mipmap/ic_launcher",
      );
      await BackgroundLocation.setAndroidConfiguration(30000);
      await BackgroundLocation.startLocationService(distanceFilter: 5);
      await BackgroundLocation.getLocationUpdates(_gpsListener);
    } else {
      //enabe NMEA STREAM
    }
  }

  void end() {
    if (settings.ownSource) {
    } else {
      //disable NMEA STREAM
    }
  }

  Future<void> _gpsListener(Location gpsLocation) async {
    await database.log(
        "New GPS point: ${gpsLocation.latitude}, ${gpsLocation.longitude}, accuracy: ${gpsLocation.accuracy}m!");
    await database.addDatapoint(gpsLocation.latitude.toString(),
        gpsLocation.longitude.toString(), recorder.mode);
  }

  Future<void> _gpsListenerStopped() async {
    await database.log("GPS listener stopped!");
  }

  Future<void> _gpsListenerError(Object errorMessage) async {
    await database.log("GPS listener error: ${errorMessage.toString()}!");
  }

  Future<bool> _handlePermissionsSelf() async {
    await database.log("locationService: getting all permissions!");

    if (!await Permission.notification.isGranted) {
      if (await Permission.notification.isPermanentlyDenied) {
        await database
            .log("locationService: Notification permission denied forever!");
        _alert(
            "Error: you have to allow Notification! Open App settings and allow GPS all the time!");
        return false;
      }
      PermissionStatus notifcationPermission =
          await Permission.notification.request();

      await Permission.notification.shouldShowRequestRationale;

      if (!notifcationPermission.isGranted) {
        await database.log("locationService: Notification permission denied!");
        return false;
      }
    }
    await database.log("locationService: Notification permission allowed!");

    if (!await Permission.location.isGranted) {
      if (await Permission.location.isPermanentlyDenied) {
        await database.log("locationService: GPS permission denied forever!");
        _alert(
            "Error: you have to allow GPS Service! Open App settings and allow GPS all the time!");
        return false;
      }
      await Permission.location.request();
      if (!await Permission.location.isGranted) {
        await database.log("locationService: GPS permission denied!");
        return false;
      }
    }
    await database.log("locationService: GPS allowed!");

    if (await Permission.locationAlways.status != PermissionStatus.granted) {
      await _alert(
          "We are going to open the settings page. Make sure to click 'Allow all the time'");
      await Permission.locationAlways.request();
      if (await Permission.locationAlways.status != PermissionStatus.granted) {
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
