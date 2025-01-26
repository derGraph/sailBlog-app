import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';

Settings settings = Settings();

class Settings {
  bool ownSource = true;
  String ip = "127.0.0.1:1000";
  String id = "";
  String cookie = "";
  int lastMode = 0;


  Future<void> init() async {
    StoredSettings setting = (await database.getSettings());
    ownSource = setting.ownSource!;
    lastMode = setting.lastMode!;
    if (setting.ip != null) ip = setting.ip!;
    if (setting.id != null) id = setting.id!;
    if (setting.cookie != null) cookie = setting.cookie!;
  }

  Future<void> changeLastMode(int mode) async {
    StoredSettings oldSetting = await database.getSettings();
    lastMode = mode;
    await database.setSettings(oldSetting.ownSource!, oldSetting.ip, mode, oldSetting.cookie);
    return;
  }

  Future<void> setCookie(String newcookie) async { 
    StoredSettings oldSetting = await database.getSettings();
    cookie = newcookie;
    await database.setSettings(oldSetting.ownSource!, oldSetting.ip, oldSetting.lastMode!, cookie);
    return;
  }

  Map<String, dynamic> toJson() => {'id': id, 'ownSource': ownSource, 'ip': ip, 'lastMode': lastMode};
}
