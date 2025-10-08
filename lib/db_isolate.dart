import 'dart:developer';
import 'dart:isolate';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orm/orm.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sailblog/_generated_prisma_client/prisma.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/_generated_prisma_client/client.dart';

@pragma('vm:entry-point')
Future<void> dbIsolateEntry(List args) async {
  final token = args[0] as RootIsolateToken;
  SendPort mainSendPort = args[1];

  BackgroundIsolateBinaryMessenger.ensureInitialized(token);

  final receivePort = ReceivePort();
  mainSendPort.send(receivePort.sendPort);

  final supportDir = await getExternalStorageDirectory();
  final dbPath = join(supportDir!.path, 'database.sqlite.db');
  final prisma = PrismaClient(datasourceUrl: 'file:$dbPath');
  await prisma.$connect();

  await for (final msg in receivePort) {
    final command = msg[0] as String;
    final args = msg[1];
    final replyPort = msg[2] as SendPort;

    try {
      dynamic result;
      switch (command) {
        case 'getDatapoints':
          result = (await _getDatapoints(prisma, args as int?))
              .map((e) => e.toJson())
              .toList();
          break;
        case 'getUploadableDatapoints':
          result = (await _getUploadableDatapoints(prisma))
              .map((e) => e.toJson())
              .toList();
          break;
        case 'countDatapoints':
          result = await _countDatapoints(prisma);
          break;
        case 'countUploadableDatapoints':
          result = await _countUploadableDatapoints(prisma);
          break;
        case 'setDatapointsUploaded':
          await _setDatapointsUploaded(prisma, args as Map<String, dynamic>);
          result = true;
          break;
        case 'log':
          await prisma.logMessage.create(
              data: PrismaUnion.$1(LogMessageCreateInput(message: args)));
          result = true;
          break;
        case 'getLogs':
          result = (await prisma.logMessage.findMany())
              .toList()
              .reversed
              .map((e) => e.toJson())
              .toList();
          break;
        case 'getSettings':
          result = (await _getSettings(prisma)).toJson();
          break;
        case 'setSettings':
          await _setSettings(prisma, args as Map<String, dynamic>);
          result = true;
          break;
        case 'addDatapoint':
          await _addDatapoint(prisma, args as Map<String, dynamic>);
          result = true;
          break;
        case 'close':
          await prisma.$disconnect();
          replyPort.send('closed');
          return;
        default:
          result = {'error': 'Unknown command $command'};
      }

      replyPort.send(result);
    } catch (e, st) {
      replyPort.send({'error': e.toString(), 'stack': st.toString()});
    }
  }
}

// ---------------------- Helper Functions ----------------------

Future<List<DatapointLocal>> _getDatapoints(PrismaClient prisma, int? val) async {
  if (val != null) {
    return (await prisma.datapointLocal.findMany(
      orderBy: PrismaUnion.$1(
        [DatapointLocalOrderByWithRelationInput(time: SortOrder.desc)],
      ),
      take: val,
    )).toList();
  }
  return (await prisma.datapointLocal.findMany(
    orderBy: PrismaUnion.$1(
      [DatapointLocalOrderByWithRelationInput(time: SortOrder.asc)],
    ),
  )).toList();
}

Future<List<DatapointLocal>> _getUploadableDatapoints(PrismaClient prisma) async {
  return (await prisma.datapointLocal.findMany(
    where: DatapointLocalWhereInput(
        uploaded: PrismaUnion.$1(IntFilter(equals: PrismaUnion.$1(0)))),
    take: 500,
  )).toList();
}

Future<int> _countDatapoints(PrismaClient prisma) async {
  final result = await prisma.datapointLocal.aggregate(
      select: AggregateDatapointLocalSelect(
          $count: PrismaUnion.$2(AggregateDatapointLocalCountArgs(
              select:
                  DatapointLocalCountAggregateOutputTypeSelect(uploaded: true)))));
  return result.$count?.uploaded ?? 0;
}

Future<int> _countUploadableDatapoints(PrismaClient prisma) async {
  final result = await prisma.datapointLocal.aggregate(
      where: DatapointLocalWhereInput(
          uploaded: PrismaUnion.$1(IntFilter(equals: PrismaUnion.$1(0)))),
      select: AggregateDatapointLocalSelect(
          $count: PrismaUnion.$2(AggregateDatapointLocalCountArgs(
              select:
                  DatapointLocalCountAggregateOutputTypeSelect(uploaded: true)))));
  return result.$count?.uploaded ?? 0;
}

Future<void> _setDatapointsUploaded(PrismaClient prisma, Map<String, dynamic> args) async {
  await prisma.datapointLocal.updateMany(
    where: DatapointLocalWhereInput(
        id: PrismaUnion.$1(StringFilter($in: args['datapoints']))),
    data: PrismaUnion.$1(
        DatapointLocalUpdateManyMutationInput(uploaded: PrismaUnion.$1(args['mode']))),
  );
}

Future<StoredSettings> _getSettings(PrismaClient prisma) async {
  final settings = await prisma.storedSettings.findFirst(
      orderBy: PrismaUnion.$1(
          [StoredSettingsOrderByWithRelationInput(id: SortOrder.desc)]));
  return settings ??
      StoredSettings(
          id: "id",
          ownSource: true,
          ip: null,
          serverIp: "https://sailblog.dergraph.at",
          lastMode: 0,
          cookie: "",
          onlineMode: true);
}

Future<void> _setSettings(PrismaClient prisma, Map<String, dynamic> args) async {
  await prisma.storedSettings.create(
      data: PrismaUnion.$1(StoredSettingsCreateInput(
    ownSource: args['ownSource'],
    onlineMode: args['onlineMode'],
    ip: args['ip'] != null ? PrismaUnion.$1(args['ip']) : null,
    serverIp: args['serverIp'],
    lastMode: args['lastMode'],
    cookie: args['cookie'] != null ? PrismaUnion.$1(args['cookie']) : null,
  )));
}

Future<void> _addDatapoint(PrismaClient prisma, Map<String, dynamic> args) async {
  await prisma.datapointLocal.create(
    data: PrismaUnion.$1(DatapointLocalCreateInput(
      lat: Decimal.fromJson(args['lat']),
      long: Decimal.fromJson(args['long']),
      hAccuracy:
          args['hAccuracy'] != null ? PrismaUnion.$1(Decimal.parse(args['hAccuracy'])) : null,
      vAccuracy:
          args['vAccuracy'] != null ? PrismaUnion.$1(Decimal.parse(args['vAccuracy'])) : null,
      heading:
          args['heading'] != null ? PrismaUnion.$1(Decimal.parse(args['heading'])) : null,
      speed: args['speed'] != null ? PrismaUnion.$1(Decimal.parse(args['speed'])) : null,
      propulsion: args['mode'],
    )),
  );
}
