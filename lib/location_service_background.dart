import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:sailblog/database.dart';


@pragma('vm:entry-point')
void startCallback() {
  FlutterForegroundTask.setTaskHandler(NMEAHandler());
}

class NMEAHandler extends TaskHandler {
  // Called when the task is started.
  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    final Map<String, dynamic> data = {
      "command": "log",
      "message": "Started Background Task"
    };
    FlutterForegroundTask.sendDataToMain(data);
  }

  // Called when the task is destroyed.
  @override
  Future<void> onDestroy(DateTime timestamp) async {
    final Map<String, dynamic> data = {
      "command": "log",
      "message": "Stopped Background Task"
    };
    FlutterForegroundTask.sendDataToMain(data);
  }

  // Called when data is sent using `FlutterForegroundTask.sendDataToTask`.
  @override
  Future<void> onReceiveData(Object data) async {
  }

  // Called when the notification itself is pressed.
  @override
  Future<void> onNotificationPressed() async {
    Map<String, dynamic> data = {
          "command": "log",
          "message": "Pressed Notification"
        };
    FlutterForegroundTask.sendDataToMain(data);
    data = {
          "command": "end"
        };
    FlutterForegroundTask.sendDataToMain(data);  
  }

  // Called when the notification itself is dismissed.
  @override
  Future<void> onNotificationDismissed() async {
    final Map<String, dynamic> data = {
      "command": "end"
    };
    FlutterForegroundTask.sendDataToMain(data);
    FlutterForegroundTask.launchApp();
  }
  
  @override
  void onRepeatEvent(DateTime timestamp) {
  }
}
