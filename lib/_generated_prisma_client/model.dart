// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

class DatapointLocal {
  const DatapointLocal({
    this.id,
    this.time,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.propulsion,
    this.uploaded,
  });

  factory DatapointLocal.fromJson(Map json) => DatapointLocal(
        id: json['id'],
        time: switch (json['time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['time']
        },
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
        propulsion: json['propulsion'],
        uploaded: json['uploaded'],
      );

  final String? id;

  final DateTime? time;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final String? propulsion;

  final int? uploaded;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time?.toIso8601String(),
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        'propulsion': propulsion,
        'uploaded': uploaded,
      };
}

class CreateManyDatapointLocalAndReturnOutputType {
  const CreateManyDatapointLocalAndReturnOutputType({
    this.id,
    this.time,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.propulsion,
    this.uploaded,
  });

  factory CreateManyDatapointLocalAndReturnOutputType.fromJson(Map json) =>
      CreateManyDatapointLocalAndReturnOutputType(
        id: json['id'],
        time: switch (json['time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['time']
        },
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
        propulsion: json['propulsion'],
        uploaded: json['uploaded'],
      );

  final String? id;

  final DateTime? time;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final String? propulsion;

  final int? uploaded;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time?.toIso8601String(),
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        'propulsion': propulsion,
        'uploaded': uploaded,
      };
}

class UpdateManyDatapointLocalAndReturnOutputType {
  const UpdateManyDatapointLocalAndReturnOutputType({
    this.id,
    this.time,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.propulsion,
    this.uploaded,
  });

  factory UpdateManyDatapointLocalAndReturnOutputType.fromJson(Map json) =>
      UpdateManyDatapointLocalAndReturnOutputType(
        id: json['id'],
        time: switch (json['time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['time']
        },
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
        propulsion: json['propulsion'],
        uploaded: json['uploaded'],
      );

  final String? id;

  final DateTime? time;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final String? propulsion;

  final int? uploaded;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time?.toIso8601String(),
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        'propulsion': propulsion,
        'uploaded': uploaded,
      };
}

class LogMessage {
  const LogMessage({
    this.id,
    this.time,
    this.message,
  });

  factory LogMessage.fromJson(Map json) => LogMessage(
        id: json['id'],
        time: switch (json['time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['time']
        },
        message: json['message'],
      );

  final String? id;

  final DateTime? time;

  final String? message;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time?.toIso8601String(),
        'message': message,
      };
}

class CreateManyLogMessageAndReturnOutputType {
  const CreateManyLogMessageAndReturnOutputType({
    this.id,
    this.time,
    this.message,
  });

  factory CreateManyLogMessageAndReturnOutputType.fromJson(Map json) =>
      CreateManyLogMessageAndReturnOutputType(
        id: json['id'],
        time: switch (json['time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['time']
        },
        message: json['message'],
      );

  final String? id;

  final DateTime? time;

  final String? message;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time?.toIso8601String(),
        'message': message,
      };
}

class UpdateManyLogMessageAndReturnOutputType {
  const UpdateManyLogMessageAndReturnOutputType({
    this.id,
    this.time,
    this.message,
  });

  factory UpdateManyLogMessageAndReturnOutputType.fromJson(Map json) =>
      UpdateManyLogMessageAndReturnOutputType(
        id: json['id'],
        time: switch (json['time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['time']
        },
        message: json['message'],
      );

  final String? id;

  final DateTime? time;

  final String? message;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time?.toIso8601String(),
        'message': message,
      };
}

class StoredSettings {
  const StoredSettings({
    this.id,
    this.ownSource,
    this.ip,
  });

  factory StoredSettings.fromJson(Map json) => StoredSettings(
        id: json['id'],
        ownSource: json['own_source'],
        ip: json['ip'],
      );

  final String? id;

  final bool? ownSource;

  final String? ip;

  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
      };
}

class CreateManyStoredSettingsAndReturnOutputType {
  const CreateManyStoredSettingsAndReturnOutputType({
    this.id,
    this.ownSource,
    this.ip,
  });

  factory CreateManyStoredSettingsAndReturnOutputType.fromJson(Map json) =>
      CreateManyStoredSettingsAndReturnOutputType(
        id: json['id'],
        ownSource: json['own_source'],
        ip: json['ip'],
      );

  final String? id;

  final bool? ownSource;

  final String? ip;

  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
      };
}

class UpdateManyStoredSettingsAndReturnOutputType {
  const UpdateManyStoredSettingsAndReturnOutputType({
    this.id,
    this.ownSource,
    this.ip,
  });

  factory UpdateManyStoredSettingsAndReturnOutputType.fromJson(Map json) =>
      UpdateManyStoredSettingsAndReturnOutputType(
        id: json['id'],
        ownSource: json['own_source'],
        ip: json['ip'],
      );

  final String? id;

  final bool? ownSource;

  final String? ip;

  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
      };
}
