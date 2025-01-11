import 'package:sailblog/database.dart';

Recorder recorder = Recorder();

enum Modes { off, anchor, sailing, motor }

class Recorder {
  Modes mode = Modes.values[0];
  void setMode(Modes newMode) {
    database.log("Selected ${newMode.index}");
    mode = newMode;
  }
}
