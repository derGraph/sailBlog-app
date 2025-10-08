import 'dart:async';

import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/recorder.dart';
import 'package:sailblog/server.dart';
import 'package:sailblog/settings.dart';

Database backgroundDB = Database();
Settings backgroundSettings = Settings(backgroundDB);

@pragma('vm:entry-point')
void startCallbackSelf() {
  FlutterForegroundTask.setTaskHandler(SelfHandler());
}

@pragma('vm:entry-point')
void startCallbackNMEA() {
  FlutterForegroundTask.setTaskHandler(NMEAHandler());
}

Modes mode = Modes.off;

class NMEAHandler extends TaskHandler {
  // Called when the task is started.
  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    defaultOnStart(timestamp, "NMEA", starter);
  }

  // Called when the task is destroyed.
  @override
  Future<void> onDestroy(DateTime timestamp) async {
    defaultOnDestroy(timestamp, "NMEA");
  }

  // Called when data is sent using `FlutterForegroundTask.sendDataToTask`.
  @override
  Future<void> onReceiveData(Object data) async {
    defaultOnRecieveData(data);
  }

  // Called when the notification itself is pressed.
  @override
  Future<void> onNotificationPressed() async {
    defaultOnNotificationPressed();
  }

  // Called when the notification itself is dismissed.
  @override
  Future<void> onNotificationDismissed() async {
    defaultOnNotificationDismissed();
  }

  @override
  Future<void> onRepeatEvent(DateTime timestamp) async {
    await defaultOnRepeatEvent(timestamp);
  }
}

class SelfHandler extends TaskHandler {
  // Called when the task is started.
  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    await database.init();
    /*final LocationSettings locationSettings =
        LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 0);

    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position? position) async {
      Modes oldMode = mode;
      DateTime endTime =
          DateTime.now().add(Duration(seconds: 1)); // Timeout for mode change

      Map<String, dynamic> data = {
        "command": "getMode",
      };
      FlutterForegroundTask.sendDataToMain(data);

      while (mode == oldMode && endTime.isAfter(DateTime.now())) {
        // Wait for mode to be set
        await Future.delayed(const Duration(milliseconds: 10));
      }
      if (endTime.isBefore(DateTime.now())) {
        log("Mode switch timed out!");
      } else {
        log("Got new Mode: $mode");
      }

      if (mode == Modes.off) {
        return;
      }

      await database.addDatapoint(
          position!.latitude.toString(), position.longitude.toString(), mode,
          hAccuracy: position.accuracy.toString(),
          vAccuracy: position.accuracy.toString(),
          heading: position.heading.toString(),
          speed: position.speed.toString());
      Settings settings = Settings();
      await settings.init();
      if (settings.onlineMode) {
        await server.uploadDatapoints();
      }
      int datapointsCount = (await database.getDatapoints()).length;
      int uploadableCount = await database.countUploadableDatapoints();

      int uploadedCount = datapointsCount - uploadableCount;
      FlutterForegroundTask.updateService(
        notificationText:
            "last update at ${DateTime.now().toLocal()} uploaded $uploadedCount/$datapointsCount",
      );
    });
    */
    defaultOnStart(timestamp, "Self", starter);
  }

  // Called when the task is destroyed.
  @override
  Future<void> onDestroy(DateTime timestamp) async {
    defaultOnDestroy(timestamp, "Self");
  }

  // Called when data is sent using `FlutterForegroundTask.sendDataToTask`.
  @override
  Future<void> onReceiveData(Object data) async {
    defaultOnRecieveData(data);
  }

  // Called when the notification itself is pressed.
  @override
  Future<void> onNotificationPressed() async {
    defaultOnNotificationPressed();
  }

  // Called when the notification itself is dismissed.
  @override
  Future<void> onNotificationDismissed() async {
    defaultOnNotificationDismissed();
  }

  @override
  Future<void> onRepeatEvent(DateTime timestamp) async {
    Position position = await Geolocator.getCurrentPosition(locationSettings: LocationSettings(
      accuracy: LocationAccuracy.best,
      distanceFilter: 0
    ));
    Modes oldMode = mode;
    DateTime endTime =
        DateTime.now().add(Duration(seconds: 1)); // Timeout for mode change

    Map<String, dynamic> data = {
      "command": "getMode",
    };
    FlutterForegroundTask.sendDataToMain(data);

    while (mode == oldMode && endTime.isAfter(DateTime.now())) {
      // Wait for mode to be set
      await Future.delayed(const Duration(milliseconds: 10));
    }
    if (endTime.isBefore(DateTime.now())) {
      log("Mode switch timed out!");
    } else {
      log("Got new Mode: $mode");
    }

    if (mode == Modes.off || !database.connected) {
      return;
    }

    await database.addDatapoint(
        position.latitude.toString(), position.longitude.toString(), mode,
        hAccuracy: position.accuracy.toString(),
        vAccuracy: position.accuracy.toString(),
        heading: position.heading.toString(),
        speed: position.speed.toString());

    await backgroundSettings.init();
    if (backgroundSettings.onlineMode) {
      await server.uploadDatapoints();
    }
    int datapointsCount = (await database.getDatapoints()).length;
    int uploadableCount = await database.countUploadableDatapoints();

    int uploadedCount = datapointsCount - uploadableCount;
    FlutterForegroundTask.updateService(
      notificationText:
          "last update at ${DateTime.now().toLocal()} uploaded $uploadedCount/$datapointsCount",
    );
    await defaultOnRepeatEvent(timestamp);
  }
}

void defaultOnNotificationPressed() {
  Map<String, dynamic> data = {
    "command": "log",
    "message": "Pressed Notification"
  };
  FlutterForegroundTask.sendDataToMain(data);
  FlutterForegroundTask.minimizeApp();
}

void defaultOnNotificationDismissed() {
  FlutterForegroundTask.minimizeApp();
  final Map<String, dynamic> data = {"command": "end"};
  FlutterForegroundTask.sendDataToMain(data);
}

void defaultOnDestroy(DateTime timestamp, String source) {
  FlutterForegroundTask.minimizeApp();
  final Map<String, dynamic> data = {"command": "end"};
  FlutterForegroundTask.sendDataToMain(data);
}

void defaultOnStart(DateTime timestamp, String source, TaskStarter starter) {
  backgroundDB.init();
  final Map<String, dynamic> data = {
    "command": "log",
    "message":
        "$source Background Task started at $timestamp, by ${starter.name}"
  };
  FlutterForegroundTask.sendDataToMain(data);
}

Future<void> defaultOnRepeatEvent(DateTime timestamp) async {
  // This method is called periodically based on the repeat interval set in the task options.
  // You can perform periodic tasks here, such as logging or updating the UI.
}

Future<void> defaultOnRecieveData(Object data) async {
  if (data is Map<String, dynamic>) {
    switch (data["command"]) {
      case "setMode":
        mode = Modes.values[int.parse(data["mode"].toString())];
        break;
      default:
        log("backgroundReciever: wrong command: ${data.toString()}");
        break;
    }
  } else {
    log("backgroundReciever: wrong message: ${data.toString()}");
  }
}

void log(String message) {
  final Map<String, dynamic> data = {"command": "log", "message": message};
  FlutterForegroundTask.sendDataToMain(data);
}
