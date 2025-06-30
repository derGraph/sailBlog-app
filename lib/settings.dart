import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/recorder.dart';

class Settings {
  bool ownSource = true;
  bool onlineMode = true;
  bool gotSettings = false;

  String ip = "127.0.0.1:1000";
  String id = "";
  String cookie = "";
  int lastMode = Modes.off.index;

  Settings() {
    init();
    while(!gotSettings) {}
    return;
  }

  Future<void> init() async {
    StoredSettings setting = (await database.getSettings());
    ownSource = setting.ownSource!;
    lastMode = setting.lastMode!;
    onlineMode = setting.onlineMode!;
    if (setting.ip != null) ip = setting.ip!;
    if (setting.id != null) id = setting.id!;
    if (setting.cookie != null) cookie = setting.cookie!;
    gotSettings = true;
  }

  Future<void> changeLastMode(int mode) async {
    StoredSettings oldSetting = await database.getSettings();
    lastMode = mode;
    await database.setSettings(oldSetting.ownSource!, oldSetting.onlineMode!,
        oldSetting.ip, mode, oldSetting.cookie);
    return;
  }

  Future<void> changeOwnSource(bool value) async {
    await recorder.setMode(Modes.off);
    StoredSettings oldSetting = await database.getSettings();
    ownSource = value;
    await database.setSettings(ownSource, oldSetting.onlineMode!, oldSetting.ip,
        oldSetting.lastMode!, oldSetting.cookie);
    return;
  }

  Future<bool> getOwnSource() async {
    await init();
    return ownSource;
  }

  Future<void> changeOnlineMode(bool mode) async {
    StoredSettings oldSetting = await database.getSettings();
    onlineMode = mode;
    await database.setSettings(oldSetting.ownSource!, onlineMode, oldSetting.ip,
        oldSetting.lastMode!, oldSetting.cookie);
    return;
  }

  Future<void> setCookie(String newcookie) async {
    database.log("Set cookie to $newcookie");
    StoredSettings oldSetting = await database.getSettings();
    cookie = newcookie;
    await database.setSettings(oldSetting.ownSource!, oldSetting.onlineMode!,
        oldSetting.ip, oldSetting.lastMode!, cookie);

    init();
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
