import 'package:sailblog/database.dart';
import 'package:sailblog/location_service.dart';
import 'package:sailblog/settings.dart';

Recorder recorder = Recorder();

enum Modes { off, anchor, sailing, motor }

class Recorder {
  Modes mode = Modes.values[settings.lastMode];
  bool online = settings.onlineMode;

  void setOnline(bool newOnline) {
    database.log("Online mode $newOnline!");
    settings.changeOnlineMode(newOnline);
    online = newOnline;
  }

  Future<void> setMode(Modes newMode) async {
    if (newMode == mode) {
      if (await locationService.isRunning()) {
        return;
      }
    }
    settings.changeLastMode(newMode.index);
    database.log("Selected transportation ${newMode.name}!");
    if (newMode.name == "off") {
      //disable logger
      locationService.end();
    } else {
      //enable logger
      locationService.start();
    }
    mode = newMode;
  }
}
