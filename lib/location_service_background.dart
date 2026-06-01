import 'dart:async';
import 'dart:io';

import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/recorder.dart';
import 'package:sailblog/server.dart';
import 'package:sailblog/settings.dart';

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
  Future<void> onDestroy(DateTime timestamp, bool isTimeout) async {
    defaultOnDestroy(timestamp, "NMEA");
  }

  // Called when data is sent using `FlutterForegroundTask.sendDataToTask`.
  @override
  void onReceiveData(Object data) {
    defaultOnRecieveData(data);
  }

  // Called when the notification itself is pressed.
  @override
  void onNotificationPressed() {
    defaultOnNotificationPressed();
  }

  // Called when the notification itself is dismissed.
  @override
  void onNotificationDismissed() {
    defaultOnNotificationDismissed();
  }

  @override
  void onRepeatEvent(DateTime timestamp) {
    defaultOnRepeatEvent(timestamp, null);
  }
}

class SelfHandler extends TaskHandler {
  StreamSubscription<Position>? _positionSubscription;
  bool _isDestroying = false;
  bool _isRestartingStream = false;
  bool _isProcessingPosition = false;
  Position? _pendingPosition;
  DateTime? _lastUploadAt;
  DateTime? _lastAcceptedPositionAt;

  // Called when the task is started.
  @override
  Future<void> onStart(DateTime timestamp, TaskStarter starter) async {
    await database.init();
    await _startPositionStream();
    defaultOnStart(timestamp, "Self", starter);
  }

  // Called when the task is destroyed.
  @override
  Future<void> onDestroy(DateTime timestamp, bool isTimeout) async {
    _isDestroying = true;
    await _positionSubscription?.cancel();
    _positionSubscription = null;
    defaultOnDestroy(timestamp, "Self");
  }

  // Called when data is sent using `FlutterForegroundTask.sendDataToTask`.
  @override
  void onReceiveData(Object data) {
    defaultOnRecieveData(data);
  }

  // Called when the notification itself is pressed.
  @override
  void onNotificationPressed() {
    defaultOnNotificationPressed();
  }

  // Called when the notification itself is dismissed.
  @override
  void onNotificationDismissed() {
    defaultOnNotificationDismissed();
  }

  @override
  void onRepeatEvent(DateTime timestamp) {
    defaultOnRepeatEvent(timestamp, _lastAcceptedPositionAt);
  }

  LocationSettings _buildLocationSettings() {
    if (Platform.isAndroid) {
      return AndroidSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: 0,
        forceLocationManager: true,
        intervalDuration: const Duration(seconds: 1),
        useMSLAltitude: true,
      );
    }

    if (Platform.isIOS) {
      return AppleSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 0,
        activityType: ActivityType.otherNavigation,
        pauseLocationUpdatesAutomatically: false,
        showBackgroundLocationIndicator: true,
        allowBackgroundLocationUpdates: true,
      );
    }

    return LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 0,
    );
  }

  Future<void> _startPositionStream() async {
    await _positionSubscription?.cancel();
    _positionSubscription = Geolocator.getPositionStream(
      locationSettings: _buildLocationSettings(),
    ).listen(
      (Position? position) {
        if (position == null) {
          return;
        }
        _enqueuePosition(position);
      },
      onError: (Object error, StackTrace stackTrace) {
        log("Position stream failed: $error\n$stackTrace");
        unawaited(_restartPositionStream());
      },
      onDone: () {
        log("Position stream closed, restarting.");
        unawaited(_restartPositionStream());
      },
      cancelOnError: false,
    );
  }

  Future<void> _restartPositionStream() async {
    if (_isDestroying || _isRestartingStream) {
      return;
    }
    _isRestartingStream = true;
    try {
      await Future.delayed(const Duration(seconds: 2));
      if (_isDestroying) {
        return;
      }
      await _startPositionStream();
    } catch (error, stackTrace) {
      log("Restarting position stream failed: $error\n$stackTrace");
    } finally {
      _isRestartingStream = false;
    }
  }

  Future<void> _handlePosition(Position position) async {
    try {
      if (!_isAcceptablePosition(position)) {
        return;
      }

      _lastAcceptedPositionAt = DateTime.now();

      await _requestLatestMode();

      if (mode == Modes.off) {
        return;
      }

      await database.addDatapoint(
        position.latitude.toString(),
        position.longitude.toString(),
        mode,
        hAccuracy: position.accuracy.toString(),
        vAccuracy: position.accuracy.toString(),
        heading: position.heading.toString(),
        speed: position.speed.toString(),
      );

      final Settings settings = Settings();
      await settings.init();
      final DateTime now = DateTime.now();
      final bool shouldUpload = _lastUploadAt == null ||
          now.difference(_lastUploadAt!) >= const Duration(seconds: 15);
      if (settings.onlineMode && shouldUpload) {
        _lastUploadAt = now;
        await server.uploadDatapoints();
      }

      final int datapointsCount = await database.countDatapoints();
      final int uploadableCount = await database.countUploadableDatapoints();
      final int uploadedCount = datapointsCount - uploadableCount;

      await FlutterForegroundTask.updateService(
        notificationText:
            "last update at ${DateTime.now().toLocal()} uploaded $uploadedCount/$datapointsCount",
      );
    } catch (error, stackTrace) {
      log("Failed to process position update: $error\n$stackTrace");
    }
  }

  void _enqueuePosition(Position position) {
    _pendingPosition = position;
    if (_isProcessingPosition) {
      return;
    }
    _isProcessingPosition = true;
    unawaited(_drainPositionQueue());
  }

  Future<void> _drainPositionQueue() async {
    try {
      while (!_isDestroying && _pendingPosition != null) {
        final Position nextPosition = _pendingPosition!;
        _pendingPosition = null;
        await _handlePosition(nextPosition);
      }
    } finally {
      _isProcessingPosition = false;
      if (!_isDestroying && _pendingPosition != null) {
        _enqueuePosition(_pendingPosition!);
      }
    }
  }

  bool _isAcceptablePosition(Position position) {
    if (!Platform.isAndroid) {
      return true;
    }

    if (position is! AndroidPosition) {
      log("Rejected non-Android position payload on Android.");
      return false;
    }

    if (position.satellitesUsedInFix <= 0) {
      log(
        "Rejected non-GNSS fix: satellites used in fix=${position.satellitesUsedInFix}, total satellites=${position.satelliteCount}",
      );
      return false;
    }

    if (position.accuracy >= 200) {
      log(
        "Position to inaccurate (<200m)"
      );
      return false;
    }

    return true;
  }

  Future<void> _requestLatestMode() async {
    final Modes oldMode = mode;
    final DateTime endTime = DateTime.now().add(const Duration(seconds: 1));

    FlutterForegroundTask.sendDataToMain({"command": "getMode"});

    while (mode == oldMode && endTime.isAfter(DateTime.now())) {
      await Future.delayed(const Duration(milliseconds: 10));
    }

    if (endTime.isBefore(DateTime.now())) {
      log("Mode sync timed out, continuing with $mode");
    }
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

Future<void> defaultOnRepeatEvent(
    DateTime timestamp, DateTime? lastAcceptedPositionAt) async {
  // This method is called periodically based on the repeat interval set in the task options.
  final String gpsState;
  if (lastAcceptedPositionAt == null) {
    gpsState = "waiting for first GPS fix";
  } else {
    final int secondsSinceFix =
        timestamp.difference(lastAcceptedPositionAt).inSeconds;
    gpsState = "last GPS fix ${secondsSinceFix}s ago";
  }

  await FlutterForegroundTask.updateService(
    notificationText: gpsState,
  );
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
