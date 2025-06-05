import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/recorder.dart';

Database test = Database();

@pragma('vm:entry-point')
void startCallbackSelf() {
  FlutterForegroundTask.setTaskHandler(SelfHandler());
}

@pragma('vm:entry-point')
void startCallbackNMEA() {
  FlutterForegroundTask.setTaskHandler(NMEAHandler());
}

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
  Future<void> onReceiveData(Object data) async {}

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
    await test.init();
    if (test.connected) {
      await test.log(
          "database connected, starting Self Background Task at $timestamp");
    } else {
      await test.log(
          "database not connected, starting Self Background Task at $timestamp");
    }
    defaultOnStart(timestamp, "Self", starter);
  }

  // Called when the task is destroyed.
  @override
  Future<void> onDestroy(DateTime timestamp) async {
    defaultOnDestroy(timestamp, "Self");
  }

  // Called when data is sent using `FlutterForegroundTask.sendDataToTask`.
  @override
  Future<void> onReceiveData(Object data) async {}

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
  final Map<String, dynamic> data = {
    "command": "log",
    "message": "NMEA Background Task repeated at $timestamp"
  };
  FlutterForegroundTask.sendDataToMain(data);
  FlutterForegroundTask.updateService(
    notificationText: "last update at $timestamp",
  );
  await test.addDatapoint("3.3", "4.4", Modes.motor);
}

void log(String message) {
  final Map<String, dynamic> data = {"command": "log", "message": message};
  FlutterForegroundTask.sendDataToMain(data);
}
