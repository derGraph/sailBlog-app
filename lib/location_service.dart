import 'dart:async';
import 'package:flutter/material.dart';
import 'package:location/location.dart' as location;
import 'package:permission_handler/permission_handler.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/main.dart';
import 'package:sailblog/settings.dart';
import 'package:sailblog/recorder.dart';

class LocationService {
  final location.Location _location = location.Location();
  StreamSubscription<location.LocationData>? _locationSubscription;
  bool _isRunning = false;
  bool _startRunning = false;

  Future<void> start() async {
    if (_startRunning) return;
    _startRunning = true;

    if (settings.ownSource) {
      if (!await _handlePermissionsSelf()) {
        _alert("You have to allow all permissions!");
        _startRunning = false;
        return;
      }

      await _location.changeSettings(
          interval: 30000,
          distanceFilter: 0,
          accuracy: location.LocationAccuracy.high);

      await _location.enableBackgroundMode(enable: true);

      await _location.changeNotificationOptions(
          channelName: "GPS Notification",
          title: "sailBlog GPS",
          subtitle:
              "While this Notification is shown, sailBlog can record your position!",
          onTapBringToFront: true);

      _locationSubscription = _location.onLocationChanged.listen(_gpsListener);
      await database.log("locationService: Enabled own GPS logging!");
      _isRunning = true;
      _startRunning = false;
    } else {
      // Enable NMEA stream implementation
    }
  }

  Future<bool> isRunning() async => _isRunning;

  Future<void> end() async {
    if (settings.ownSource) {
      _locationSubscription?.cancel();
      _locationSubscription = null;
      await _location.enableBackgroundMode(enable: false);
      await database.log("locationService: Disabled own GPS logging!");
      _isRunning = false;
    } else {
      // Disable NMEA stream
    }
  }

  Future<void> _gpsListener(location.LocationData locationData) async {
    await database.addDatapoint(
      locationData.latitude.toString(),
      locationData.longitude.toString(),
      hAccuracy: locationData.accuracy.toString(),
      vAccuracy: locationData.verticalAccuracy.toString(),
      heading: locationData.heading.toString(),
      speed: locationData.speed.toString(),
      recorder.mode,
    );
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
      builder: (BuildContext context) => AlertDialog(
        title: const Text("Location Service"),
        content: Text(message),
        actions: [
          TextButton(
            child: const Text("OK"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

LocationService locationService = LocationService();
