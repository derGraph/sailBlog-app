// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

class DatapointLocal {
  const DatapointLocal({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointLocal.fromJson(Map json) => DatapointLocal(
        id: json['id'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
      );

  final String? id;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class CreateManyDatapointLocalAndReturnOutputType {
  const CreateManyDatapointLocalAndReturnOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory CreateManyDatapointLocalAndReturnOutputType.fromJson(Map json) =>
      CreateManyDatapointLocalAndReturnOutputType(
        id: json['id'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
      );

  final String? id;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointUploaded {
  const DatapointUploaded({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointUploaded.fromJson(Map json) => DatapointUploaded(
        id: json['id'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
      );

  final String? id;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class CreateManyDatapointUploadedAndReturnOutputType {
  const CreateManyDatapointUploadedAndReturnOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory CreateManyDatapointUploadedAndReturnOutputType.fromJson(Map json) =>
      CreateManyDatapointUploadedAndReturnOutputType(
        id: json['id'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
      );

  final String? id;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}
