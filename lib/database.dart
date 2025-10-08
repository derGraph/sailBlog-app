import 'dart:isolate';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sailblog/_generated_prisma_client/model.dart';
import 'package:sailblog/recorder.dart';
import 'db_isolate.dart';

class Database {
  Isolate? _isolate;
  late SendPort _dbSendPort;
  bool connected = false;

  Future<void> init() async {
    if (connected) return;

    WidgetsFlutterBinding.ensureInitialized();

    final rootToken = RootIsolateToken.instance;

    final readyPort = ReceivePort();
    _isolate = await Isolate.spawn(dbIsolateEntry, [rootToken, readyPort.sendPort]);
    _dbSendPort = await readyPort.first as SendPort;
    connected = true;
  }

  Future<dynamic> _send(String cmd, [dynamic args]) async {
    final rp = ReceivePort();
    _dbSendPort.send([cmd, args, rp.sendPort]);
    final result = await rp.first;
    rp.close();

    // Standardize errors from isolate
    if (result is Map && result.containsKey('error')) {
      throw Exception(result['error']);
    }

    return result;
  }

  // ----------------------- 1:1 API with JSON serialization -----------------------

  Future<List<DatapointLocal>> getDatapoints([int? val]) async {
    final raw = await _send('getDatapoints', val) as List<dynamic>;
    return raw.map((e) => DatapointLocal.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<List<DatapointLocal>> getUploadableDatapoints() async {
    final raw = await _send('getUploadableDatapoints') as List<dynamic>;
    return raw.map((e) => DatapointLocal.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<int> countDatapoints() async => await _send('countDatapoints');

  Future<int> countUploadableDatapoints() async => await _send('countUploadableDatapoints');

  Future<void> setDatapointsUploaded(List<String> datapoints, int mode) async =>
      await _send('setDatapointsUploaded', {'datapoints': datapoints, 'mode': mode});

  Future<void> log(String message) async => await _send('log', message);

  Future<List<LogMessage>> getLogs() async {
    final raw = await _send('getLogs') as List<dynamic>;
    return raw.map((e) => LogMessage.fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<StoredSettings> getSettings() async {
    final raw = await _send('getSettings') as Map<String, dynamic>;
    return StoredSettings.fromJson(raw);
  }

  Future<void> setSettings(bool ownSource, bool onlineMode, String? ip,
          String serverIp, int lastMode, String? cookie) async =>
      await _send('setSettings', {
        'ownSource': ownSource,
        'onlineMode': onlineMode,
        'ip': ip,
        'serverIp': serverIp,
        'lastMode': lastMode,
        'cookie': cookie
      });

  Future<void> addDatapoint(String latitude, String longitude, Modes mode,
          {String? hAccuracy,
          String? vAccuracy,
          String? heading,
          String? speed}) async =>
      await _send('addDatapoint', {
        'lat': latitude,
        'long': longitude,
        'hAccuracy': hAccuracy,
        'vAccuracy': vAccuracy,
        'heading': heading,
        'speed': speed,
        'mode': mode.index
      });

  Future<void> close() async {
    //await _send('close');
    _isolate?.kill(priority: Isolate.immediate);
    connected = false;
  }
}

final database = Database();
