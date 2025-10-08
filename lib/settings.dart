import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/database.dart';
import 'package:sailblog/recorder.dart';

Settings appSettings = Settings(database);

class Settings {
  bool ownSource = true;
  bool onlineMode = true;
  bool gotSettings = false;

  String ip = "127.0.0.1:1000";
  String id = "";
  String cookie = "";
  String serverIp = "https://sailblog.dergraph.at";
  int lastMode = Modes.off.index;

  late Database myDB;

  Settings(database) {
    myDB = database;
    init();
    return;
  }

  Future<void> init() async {
    myDB.init();
    StoredSettings setting = (await database.getSettings());
    ownSource = setting.ownSource!;
    lastMode = setting.lastMode!;
    onlineMode = setting.onlineMode!;
    serverIp = setting.serverIp!;
    if (setting.ip != null) ip = setting.ip!;
    if (setting.id != null) id = setting.id!;
    if (setting.cookie != null) cookie = setting.cookie!;
    gotSettings = true;
  }

  Future<void> changeLastMode(int mode) async {
    StoredSettings oldSetting = await database.getSettings();
    lastMode = mode;
    await database.setSettings(oldSetting.ownSource!, oldSetting.onlineMode!,
        oldSetting.ip, oldSetting.serverIp!, mode, oldSetting.cookie);
    return;
  }

  Future<void> changeOwnSource(bool value) async {
    await recorder.setMode(Modes.off);
    StoredSettings oldSetting = await database.getSettings();
    ownSource = value;
    await database.setSettings(ownSource, oldSetting.onlineMode!, oldSetting.ip,
        oldSetting.serverIp!, oldSetting.lastMode!, oldSetting.cookie);
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
        oldSetting.serverIp!, oldSetting.lastMode!, oldSetting.cookie);
    return;
  }

  Future<void> setCookie(String newcookie) async {
    database.log("Set cookie to $newcookie");
    StoredSettings oldSetting = await database.getSettings();
    cookie = newcookie;
    await database.setSettings(oldSetting.ownSource!, oldSetting.onlineMode!,
        oldSetting.ip, oldSetting.serverIp!, oldSetting.lastMode!, cookie);

    init();
    return;
  }

  Future<void> setServerIp(String newServerIp) async {
    database.log("Set new IP to $newServerIp");
    StoredSettings oldSetting = await database.getSettings();
    serverIp = newServerIp;
    await database.setSettings(oldSetting.ownSource!, oldSetting.onlineMode!,
        oldSetting.ip, serverIp, oldSetting.lastMode!, oldSetting.cookie);
    await init();
    return;
  }

  Future<String> getServerIp() async {
    await init();
    return serverIp;
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
