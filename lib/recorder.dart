import 'package:sailblog/database.dart';
import 'package:sailblog/location_service.dart';

Recorder recorder = Recorder();

enum Modes { off, anchor, sailing, motor }

class Recorder {
  Modes mode = Modes.values[0];
  bool online = false;

  void setOnline(bool newOnline) {
    database.log("Online mode $newOnline!");
    online = newOnline;
  }

  void setMode(Modes newMode) {
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
