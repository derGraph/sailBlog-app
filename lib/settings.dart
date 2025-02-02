import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/recorder.dart';

Settings settings = Settings();

class Settings {
  bool ownSource = true;
  bool onlineMode = true;
  String ip = "127.0.0.1:1000";
  String id = "";
  String cookie = "";
  int lastMode = Modes.off.index;

  Future<void> init() async {
    StoredSettings setting = (await database.getSettings());
    ownSource = setting.ownSource!;
    lastMode = setting.lastMode!;
    onlineMode = setting.onlineMode!;
    if (setting.ip != null) ip = setting.ip!;
    if (setting.id != null) id = setting.id!;
    if (setting.cookie != null) cookie = setting.cookie!;
  }

  Future<void> changeLastMode(int mode) async {
    StoredSettings oldSetting = await database.getSettings();
    lastMode = mode;
    await database.setSettings(oldSetting.ownSource!, oldSetting.onlineMode!,
        oldSetting.ip, mode, oldSetting.cookie);
    return;
  }

  Future<void> changeOnlineMode(bool mode) async {
    StoredSettings oldSetting = await database.getSettings();
    onlineMode = mode;
    await database.setSettings(oldSetting.ownSource!, onlineMode, oldSetting.ip,
        oldSetting.lastMode!, oldSetting.cookie);
    return;
  }

  Future<void> setCookie(String newcookie) async {
    StoredSettings oldSetting = await database.getSettings();
    cookie = newcookie;
    await database.setSettings(oldSetting.ownSource!, oldSetting.onlineMode!,
        oldSetting.ip, oldSetting.lastMode!, cookie);
    return;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'ownSource': ownSource,
        'ip': ip,
        'lastMode': lastMode,
        'cookie': cookie,
        'onlineMode': onlineMode
      };
}
