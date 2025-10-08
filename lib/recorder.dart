import 'package:sailblog/database.dart';
import 'package:sailblog/location_service.dart';
import 'package:sailblog/server.dart';
import 'package:sailblog/settings.dart';

Recorder recorder = Recorder();

enum Modes { anchor, motor, sailing, off }

class Recorder {
  Modes mode = Modes.values[appSettings.lastMode];
  bool online = appSettings.onlineMode;

  Recorder() {
    init();
  }

  Future<void> init() async {
    await appSettings.init();
    online = appSettings.onlineMode;
    mode = Modes.values[appSettings.lastMode];
    await database.log("Init with ${mode.name}!");
  }

  Future<void> setOnline(bool newOnline) async {
    await database.log("Online mode $newOnline!");
    Settings settings = Settings(database);
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

    await appSettings.init();
    await appSettings.changeLastMode(newMode.index);
    if (newMode == Modes.off) {
      //disable logger
      locationService.end();
    } else {
      //enable logger
      if (!(await locationService.isRunning())) {
        locationService.start();
      }
    }
    mode = newMode;
  }
}
