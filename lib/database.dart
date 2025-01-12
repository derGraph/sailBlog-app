import 'package:flutter/material.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:orm/orm.dart';
import 'package:orm_flutter/orm_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/_generated_prisma_client/prisma.dart';
import 'package:sailblog/pages/settings.dart';
import 'package:sailblog/recorder.dart';
import '_generated_prisma_client/client.dart';

late final PrismaClient prisma;

class Database {
  bool connected = false;
  Future<void> init() async {
    if (!connected) {
      WidgetsFlutterBinding.ensureInitialized();

      final supportDir = await getApplicationSupportDirectory();
      final database = join(supportDir.path, 'database.sqlite.db');

      prisma = PrismaClient(datasourceUrl: 'file:$database');
      final engine = switch (prisma.$engine) {
        LibraryEngine engine => engine,
        _ => null,
      };

      await prisma.$connect();
      await engine?.applyMigrations(path: 'prisma/migrations');
      log("Connected to DB");
      await settings.init();
      log("Settings loaded: ${settings.toJson()}");
      connected = true;
      await FMTCObjectBoxBackend().initialise();
      await FMTCStore('mapStore').manage.create();
      await log("Map storage Initialized!");
    }
  }

  Future<void> log(String logMessage) async {
    await prisma.logMessage.create(
        data: PrismaUnion.$1(LogMessageCreateInput(message: logMessage)));
  }

  Future<List<LogMessage>> getLogs() async {
    List<LogMessage> logs =
        (await prisma.logMessage.findMany()).toList().reversed.toList();
    return logs;
  }

  Future<StoredSettings> getSettings() async {
    StoredSettings? settings;
    try {
      settings = (await prisma.storedSettings.findFirst());
    } catch (exception) {
      log("getSettings Error: $exception");
    }
    settings ??= StoredSettings(
      id: "id",
      ownSource: true,
      ip: null,
    );
    return settings;
  }

  Future<void> addDatapoint(String latitude, String longitude, Modes mode, {String? hAccuracy, String? vAccuracy, String? heading, String? speed}) async {

    await prisma.datapointLocal.create(
          data: PrismaUnion.$1(DatapointLocalCreateInput(
              lat: Decimal.fromJson(latitude.toString()),
              long: Decimal.fromJson(longitude.toString()),
              hAccuracy: PrismaUnion.$1(
                  Decimal.fromJson(hAccuracy.toString())),
              vAccuracy: PrismaUnion.$1(Decimal.fromJson(
                  vAccuracy.toString())),
              heading: PrismaUnion.$1(
                  Decimal.fromJson(heading.toString())),
              speed: PrismaUnion.$1(
                  Decimal.fromJson(speed.toString())),
              propulsion: PrismaUnion.$1(
                  mode.toString(),
                  ))),
        );
  }
}

Database database = Database();
