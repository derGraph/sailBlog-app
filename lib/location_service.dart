import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/location_service_background.dart';
import 'package:sailblog/main.dart';
import 'package:sailblog/settings.dart';
import 'package:sailblog/recorder.dart';

class LocationService {
  bool _startRunning = false;

  Future<void> start() async {
    if (await isRunning()) return;
    if (_startRunning) return;
    _startRunning = true;

    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: "sailBlogBackground",
        channelName: "sailBlogBackground",
      ),
      iosNotificationOptions: IOSNotificationOptions(),
      foregroundTaskOptions: ForegroundTaskOptions(
          eventAction: ForegroundTaskEventAction.repeat(1000),
          allowWakeLock: true,
          allowWifiLock: true,
          autoRunOnBoot: true),
    );
    if (settings.ownSource) {
      if (!await _handlePermissionsSelf()) {
        _alert("You have to allow all permissions!");
        _startRunning = false;
        return;
      }
      await FlutterForegroundTask.startService(
        notificationTitle: "sailBlog Location recording...",
        notificationText: "Click to return!",
        callback: startCallbackSelf,
      );
    } else {
      if (!await _handlePermissionsNMEA()) {
        _alert("You have to allow all permissions!");
        _startRunning = false;
        return;
      }
      await FlutterForegroundTask.startService(
        notificationTitle: "sailBlog NMEA recording...",
        notificationText: "Click to stop recording!",
        callback: startCallbackNMEA,
      );
    }
    _startRunning = false;
  }

  Future<bool> isRunning() async {
    return await FlutterForegroundTask.isRunningService;
  }

  Future<void> end() async {
    // Disable Foreground Task
    await FlutterForegroundTask.stopService();
    await database.log("Location Service stopped!");
  }

  Future<void> backgroundReciever(Object data) async {
    if (data is Map<String, dynamic>) {
      switch (data["command"]) {
        case "log":
          await database.log("backgroundReciever: ${data["message"]}");
          break;
        case "getMode":
          Map<String, dynamic> data = {
            "command": "setMode",
            "mode": recorder.mode.index.toString()
          };
          FlutterForegroundTask.sendDataToTask(data);
          break;
        case "end":
          end();
          recorder.setMode(Modes.off);
          break;
        default:
          await database
              .log("backgroundReciever: wrong command: ${data.toString()}");
          break;
      }
    } else {
      await database
          .log("backgroundReciever: wrong message: ${data.toString()}");
    }
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

  Future<bool> _handlePermissionsNMEA() async {
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
