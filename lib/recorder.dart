import 'package:sailblog/database.dart';
import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:sailblog/location_service.dart';
import 'package:sailblog/server.dart';
import 'package:sailblog/settings.dart';

Recorder recorder = Recorder();

enum Modes { anchor, motor, sailing, off }

Settings mySettings = Settings();

class Recorder {
  Modes mode = Modes.values[mySettings.lastMode];
  bool online = mySettings.onlineMode;

  Recorder() {
    init();
  }

  Future<void> init() async {
    await mySettings.init();
    online = mySettings.onlineMode;
    mode = Modes.values[mySettings.lastMode];
    await database.log("Init with ${mode.name}!");
  }

  Future<void> setOnline(bool newOnline) async {
    await database.log("Online mode $newOnline!");
    Settings settings = Settings();
    await settings.init();
    await settings.changeOnlineMode(newOnline);
    online = newOnline;
    if (online) {
      await server.uploadAllDatapoints();
    }
  }

  Future<void> setMode(Modes newMode) async {
    if (newMode == mode) {
      if (await locationService.isRunning()) {
        return;
      }
      if (!await locationService.isRunning() && newMode == Modes.off) {
        return;
      }
    }
    Settings settings = Settings();
    await settings.init();
    await settings.changeLastMode(newMode.index);
    if (newMode == Modes.off) {
      //disable logger
      await locationService.end();
    } else {
      //enable logger
      if (!(await locationService.isRunning())) {
        await locationService.start();
      }
    }
    mode = newMode;
    if (await locationService.isRunning()) {
      FlutterForegroundTask.sendDataToTask({
        "command": "setMode",
        "mode": newMode.index.toString(),
      });
    }
  }
}
