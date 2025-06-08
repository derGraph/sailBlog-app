import 'package:sailblog/database.dart';
import 'package:sailblog/location_service.dart';
import 'package:sailblog/server.dart';
import 'package:sailblog/settings.dart';

Recorder recorder = Recorder();

enum Modes { anchor, motor, sailing, off }

class Recorder {
  Modes mode = Modes.values[settings.lastMode];
  bool online = settings.onlineMode;

  Future<void> setOnline(bool newOnline) async {
    await database.log("Online mode $newOnline!");
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
    await settings.changeLastMode(newMode.index);
    await database.log("Selected transportation ${newMode.name}!");
    if (newMode == Modes.off) {
      //disable logger
      locationService.end();
    } else {
      //enable logger
      locationService.start();
    }
    mode = newMode;
  }
}
