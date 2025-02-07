import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:sailblog/database.dart';


@pragma('vm:entry-point')
void startCallback() {
  FlutterForegroundTask.setTaskHandler(NMEAHandler());
}

void onReceiveTaskData(Object data) {
  if (data is Map<String, dynamic>) {
      print(data.toString());
    }
}


class NMEAHandler extends TaskHandler {
  // Called when the task is started.
  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    print('onStart(starter: ${starter.name})');
    FlutterForegroundTask.sendDataToMain("HI");
  }

  // Called based on the eventAction set in ForegroundTaskOptions.
  @override
  void onRepeatEvent(DateTime timestamp) {
    // Send data to main isolate.
    final Map<String, dynamic> data = {
      "timestampMillis": timestamp.millisecondsSinceEpoch,
    };
    FlutterForegroundTask.sendDataToMain(data);
  }

  // Called when the task is destroyed.
  @override
  Future<void> onDestroy(DateTime timestamp) async {
    await database.log('onDestroy');
  }

  // Called when data is sent using `FlutterForegroundTask.sendDataToTask`.
  @override
  Future<void> onReceiveData(Object data) async {
    await database.log('onReceiveData: $data');
  }

  // Called when the notification button is pressed.
  @override
  Future<void> onNotificationButtonPressed(String id) async {
    await database.log('onNotificationButtonPressed: $id');
  }

  // Called when the notification itself is pressed.
  @override
  Future<void> onNotificationPressed() async {
    await database.log('onNotificationPressed');
  }

  // Called when the notification itself is dismissed.
  @override
  Future<void> onNotificationDismissed() async {
    await database.log('onNotificationDismissed');
  }
}
