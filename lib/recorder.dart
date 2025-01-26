import 'package:sailblog/database.dart';
import 'package:sailblog/location_service.dart';
import 'package:sailblog/settings.dart';

Recorder recorder = Recorder();

enum Modes { off, anchor, sailing, motor }

class Recorder {
  Modes mode = Modes.values[settings.lastMode];
  bool online = false;

  void setOnline(bool newOnline) {
    database.log("Online mode $newOnline!");
    online = newOnline;
  }

  void setMode(Modes newMode) {
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
