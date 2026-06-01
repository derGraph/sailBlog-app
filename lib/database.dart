import 'dart:io';

import 'package:flutter/material.dart';
import 'package:orm/orm.dart';
import 'package:orm_flutter/orm_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/_generated_prisma_client/prisma.dart';
import 'package:sailblog/recorder.dart';
import '_generated_prisma_client/client.dart';

late PrismaClient prisma;

class Database {
  bool connected = false;
  String? _databasePath;

  Future<String> getDatabasePath() async {
    if (_databasePath != null) {
      return _databasePath!;
    }

    WidgetsFlutterBinding.ensureInitialized();
    final supportDir = await getApplicationSupportDirectory();
    _databasePath = join(supportDir.path, 'database.sqlite.db');
    return _databasePath!;
  }

  Future<void> init() async {
    if (!connected) {
      WidgetsFlutterBinding.ensureInitialized();
      final database = await getDatabasePath();

      prisma = PrismaClient(datasourceUrl: 'file:$database');
      final engine = switch (prisma.$engine) {
        LibraryEngine engine => engine,
        _ => null,
      };
      await prisma.$connect();
      await engine?.applyMigrations(path: 'prisma/migrations');
      log("Connected to DB");
      connected = true;
    }
  }

  Future<void> disconnect() async {
    if (!connected) {
      return;
    }

    await prisma.$disconnect();
    connected = false;
  }

  Future<void> importDatabase(String sourcePath) async {
    final sourceFile = File(sourcePath);
    if (!await sourceFile.exists()) {
      throw Exception("Selected database file was not found.");
    }

    final targetPath = await getDatabasePath();
    if (sourceFile.absolute.path == targetPath) {
      await init();
      return;
    }

    final targetFile = File(targetPath);
    final backupFile = File("$targetPath.bak");
    final tempImportFile = File("$targetPath.import");
    final sidecarFiles = _sidecarFiles(targetPath);
    final backupSidecarFiles = _sidecarFiles("$targetPath.bak");

    if (await tempImportFile.exists()) {
      await tempImportFile.delete();
    }
    if (await backupFile.exists()) {
      await backupFile.delete();
    }
    for (final file in backupSidecarFiles) {
      if (await file.exists()) {
        await file.delete();
      }
    }

    if (await targetFile.exists()) {
      await targetFile.rename(backupFile.path);
    }
    for (var i = 0; i < sidecarFiles.length; i++) {
      final sidecarFile = sidecarFiles[i];
      final backupSidecarFile = backupSidecarFiles[i];
      if (await sidecarFile.exists()) {
        await sidecarFile.rename(backupSidecarFile.path);
      }
    }

    try {
      await sourceFile.copy(tempImportFile.path);
      await tempImportFile.rename(targetFile.path);
      await _writeImportConfirmation(targetPath, sourcePath);
      if (await backupFile.exists()) {
        await backupFile.delete();
      }
      for (final file in backupSidecarFiles) {
        if (await file.exists()) {
          await file.delete();
        }
      }
    } catch (error) {
      if (await tempImportFile.exists()) {
        await tempImportFile.delete();
      }
      if (await targetFile.exists()) {
        await targetFile.delete();
      }
      if (await backupFile.exists()) {
        await backupFile.rename(targetFile.path);
      }
      for (var i = 0; i < sidecarFiles.length; i++) {
        final sidecarFile = sidecarFiles[i];
        final backupSidecarFile = backupSidecarFiles[i];
        if (await sidecarFile.exists()) {
          await sidecarFile.delete();
        }
        if (await backupSidecarFile.exists()) {
          await backupSidecarFile.rename(sidecarFile.path);
        }
      }
      rethrow;
    }
  }

  List<File> _sidecarFiles(String databasePath) => [
        File("$databasePath-shm"),
        File("$databasePath-wal"),
        File("$databasePath-journal"),
      ];

  Future<void> _writeImportConfirmation(
      String databasePath, String sourcePath) async {
    final importPrisma = PrismaClient(datasourceUrl: 'file:$databasePath');
    final engine = switch (importPrisma.$engine) {
      LibraryEngine engine => engine,
      _ => null,
    };
    await importPrisma.$connect();
    await engine?.applyMigrations(path: 'prisma/migrations');
    await importPrisma.logMessage.create(
      data: PrismaUnion.$1(
        LogMessageCreateInput(message: "Imported database from $sourcePath"),
      ),
    );
  }

  Future<void> log(String logMessage) async {
    if (connected) {
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
    List<DatapointLocal> datapoints = (await prisma.datapointLocal.findMany(
            orderBy: PrismaUnion.$1([
      DatapointLocalOrderByWithRelationInput(time: SortOrder.asc),
    ])))
        .toList();
    return datapoints;
  }

  Future<List<DatapointLocal>> getRecentDatapoints({int limit = 200}) async {
    final datapoints = (await prisma.datapointLocal.findMany(
      orderBy: PrismaUnion.$1([
        DatapointLocalOrderByWithRelationInput(time: SortOrder.desc),
      ]),
      take: limit,
    ))
        .toList()
        .reversed
        .toList();
    return datapoints;
  }

  Future<int> countDatapoints() async {
    try {
      final result = await prisma.datapointLocal.aggregate(
        select: AggregateDatapointLocalSelect(
          $count: PrismaUnion.$2(
            AggregateDatapointLocalCountArgs(
              select: DatapointLocalCountAggregateOutputTypeSelect(id: true),
            ),
          ),
        ),
      );
      return result.$count?.id ?? 0;
    } catch (exception) {
      log("countDatapoints Error: $exception");
      return 0;
    }
  }

  Future<int> countUploadableDatapoints() async {
    try {
      AggregateDatapointLocal result = (await prisma.datapointLocal.aggregate(
          where: DatapointLocalWhereInput(
            uploaded: PrismaUnion.$1(IntFilter(equals: PrismaUnion.$1(0))),
          ),
          select: AggregateDatapointLocalSelect(
              $count: PrismaUnion.$2(AggregateDatapointLocalCountArgs(
                  select: DatapointLocalCountAggregateOutputTypeSelect(
                      uploaded: true))))));
      if (result.$count?.uploaded == null) {
        return 0;
      } else {
        return result.$count!.uploaded!;
      }
    } catch (exception) {
      log("countUploadableDatapoints Error: $exception");
      return 0;
    }
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
  }
}

Database database = Database();
