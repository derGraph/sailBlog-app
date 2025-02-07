import 'package:flutter/material.dart';
import 'package:flutter_map_tile_caching/flutter_map_tile_caching.dart';
import 'package:orm/orm.dart';
import 'package:orm_flutter/orm_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/_generated_prisma_client/prisma.dart';
import 'package:sailblog/recorder.dart';
import 'package:sailblog/server.dart';
import 'package:sailblog/settings.dart';
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
      try {
        await FMTCObjectBoxBackend().initialise();
        await FMTCStore('mapStore').manage.create();
      } catch (error, stackTrace) {
        await log("FTMC Error: ${error.toString()}, ${stackTrace.toString()}");
      }

      await log("Map storage Initialized!");
    }
  }

  Future<void> log(String logMessage) async {
    if(connected){
      await prisma.logMessage.create(
        data: PrismaUnion.$1(LogMessageCreateInput(message: logMessage)));
    }
  }

  Future<List<LogMessage>> getLogs() async {
    List<LogMessage> logs =
        (await prisma.logMessage.findMany()).toList().reversed.toList();
    return logs;
  }

  Future<List<DatapointLocal>> getDatapoints() async {
    List<DatapointLocal> datapoints =
        (await prisma.datapointLocal.findMany()).toList();
    return datapoints;
  }

  Future<List<DatapointLocal>> getUploadableDatapoints() async {
    List<DatapointLocal> datapoints = (await prisma.datapointLocal.findMany(
      where: DatapointLocalWhereInput(
          uploaded: PrismaUnion.$1(IntFilter(equals: PrismaUnion.$1(0)))),
      take: 500,
    ))
        .toList();
    return datapoints;
  }

  Future<void> setDatapointsUploaded(List<String> datapoints, int mode) async {
    await prisma.datapointLocal.updateMany(
        where: DatapointLocalWhereInput(
            id: PrismaUnion.$1(StringFilter($in: datapoints))),
        data: PrismaUnion.$1(DatapointLocalUpdateManyMutationInput(
            uploaded: PrismaUnion.$1(mode))));
  }

  Future<StoredSettings> getSettings() async {
    StoredSettings? settings;
    try {
      settings = (await prisma.storedSettings.findFirst(
          orderBy: PrismaUnion.$1(
              [StoredSettingsOrderByWithRelationInput(id: SortOrder.desc)])));
    } catch (exception) {
      log("getSettings Error: $exception");
    }
    settings ??= StoredSettings(
        id: "id",
        ownSource: true,
        ip: null,
        lastMode: 0,
        cookie: "",
        onlineMode: true);
    return settings;
  }

  Future<void> setSettings(bool ownSource, bool onlineMode, String? ip,
      int lastMode, String? cookie) async {
    try {
      await prisma.storedSettings.create(
          data: PrismaUnion.$1(StoredSettingsCreateInput(
        ownSource: ownSource,
        onlineMode: onlineMode,
        ip: ip != null ? PrismaUnion.$1(ip) : null,
        lastMode: lastMode,
        cookie: cookie != null ? PrismaUnion.$1(cookie) : null,
      )));
      log("setSettings: Stored settings: ${settings.toJson()}");
    } catch (exception) {
      log("setSettings Error: $exception");
    }
  }

  Future<void> addDatapoint(String latitude, String longitude, Modes mode,
      {String? hAccuracy,
      String? vAccuracy,
      String? heading,
      String? speed}) async {
    await prisma.datapointLocal.create(
      data: PrismaUnion.$1(DatapointLocalCreateInput(
        lat: Decimal.fromJson(latitude.toString()),
        long: Decimal.fromJson(longitude.toString()),
        hAccuracy:
            hAccuracy != null ? PrismaUnion.$1(Decimal.parse(hAccuracy)) : null,
        vAccuracy:
            vAccuracy != null ? PrismaUnion.$1(Decimal.parse(vAccuracy)) : null,
        heading:
            heading != null ? PrismaUnion.$1(Decimal.parse(heading)) : null,
        speed: speed != null ? PrismaUnion.$1(Decimal.parse(speed)) : null,
        propulsion: mode.index,
      )),
    );
    if (recorder.online) {
      server.uploadDatapoints();
    }
  }
}

Database database = Database();
