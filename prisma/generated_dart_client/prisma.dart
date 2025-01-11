// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedDecimalFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDecimalFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? equals;

  final _i1
      .PrismaUnion<Iterable<_i1.Decimal>, _i1.Reference<Iterable<_i1.Decimal>>>?
      $in;

  final _i1
      .PrismaUnion<Iterable<_i1.Decimal>, _i1.Reference<Iterable<_i1.Decimal>>>?
      notIn;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lte;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gte;

  final _i1.PrismaUnion<_i1.Decimal, _i2.NestedDecimalFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DecimalFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DecimalFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? equals;

  final _i1
      .PrismaUnion<Iterable<_i1.Decimal>, _i1.Reference<Iterable<_i1.Decimal>>>?
      $in;

  final _i1
      .PrismaUnion<Iterable<_i1.Decimal>, _i1.Reference<Iterable<_i1.Decimal>>>?
      notIn;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lte;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gte;

  final _i1.PrismaUnion<_i1.Decimal, _i2.NestedDecimalFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedDecimalNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDecimalNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<_i1.Decimal,
      _i1.PrismaUnion<_i1.Reference<_i1.Decimal>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<
      Iterable<_i1.Decimal>,
      _i1
      .PrismaUnion<_i1.Reference<Iterable<_i1.Decimal>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<
          Iterable<_i1.Decimal>,
          _i1
          .PrismaUnion<_i1.Reference<Iterable<_i1.Decimal>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lte;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gte;

  final _i1.PrismaUnion<_i1.Decimal,
      _i1.PrismaUnion<_i2.NestedDecimalNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DecimalNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DecimalNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<_i1.Decimal,
      _i1.PrismaUnion<_i1.Reference<_i1.Decimal>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<
      Iterable<_i1.Decimal>,
      _i1
      .PrismaUnion<_i1.Reference<Iterable<_i1.Decimal>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<
          Iterable<_i1.Decimal>,
          _i1
          .PrismaUnion<_i1.Reference<Iterable<_i1.Decimal>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lte;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gte;

  final _i1.PrismaUnion<_i1.Decimal,
      _i1.PrismaUnion<_i2.NestedDecimalNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class DatapointLocalWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<_i2.DatapointLocalWhereInput,
      Iterable<_i2.DatapointLocalWhereInput>>? AND;

  final Iterable<_i2.DatapointLocalWhereInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointLocalWhereInput,
      Iterable<_i2.DatapointLocalWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.DecimalFilter, _i1.Decimal>? lat;

  final _i1.PrismaUnion<_i2.DecimalFilter, _i1.Decimal>? long;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
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

class DatapointLocalWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.DatapointLocalWhereInput,
      Iterable<_i2.DatapointLocalWhereInput>>? AND;

  final Iterable<_i2.DatapointLocalWhereInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointLocalWhereInput,
      Iterable<_i2.DatapointLocalWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DecimalFilter, _i1.Decimal>? lat;

  final _i1.PrismaUnion<_i2.DecimalFilter, _i1.Decimal>? long;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointLocalSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
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

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class DatapointLocalOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalOrderByWithRelationInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? speed;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? heading;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? depth;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? hAccuracy;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? vAccuracy;

  @override
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

enum DatapointLocalScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Datapoint_local'),
  lat<_i1.Decimal>('lat', 'Datapoint_local'),
  long<_i1.Decimal>('long', 'Datapoint_local'),
  speed<_i1.Decimal>('speed', 'Datapoint_local'),
  heading<_i1.Decimal>('heading', 'Datapoint_local'),
  depth<_i1.Decimal>('depth', 'Datapoint_local'),
  hAccuracy<_i1.Decimal>('h_accuracy', 'Datapoint_local'),
  vAccuracy<_i1.Decimal>('v_accuracy', 'Datapoint_local');

  const DatapointLocalScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class DatapointLocalCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalCreateInput({
    this.id,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final String? id;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  @override
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

class DatapointLocalUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUncheckedCreateInput({
    this.id,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final String? id;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  @override
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

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class DatapointLocalCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalCreateManyInput({
    this.id,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final String? id;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  @override
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

class CreateManyDatapointLocalAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyDatapointLocalAndReturnOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
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

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DecimalFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DecimalFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.Decimal? set;

  final _i1.Decimal? increment;

  final _i1.Decimal? decrement;

  final _i1.Decimal? multiply;

  final _i1.Decimal? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class NullableDecimalFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableDecimalFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? set;

  final _i1.Decimal? increment;

  final _i1.Decimal? decrement;

  final _i1.Decimal? multiply;

  final _i1.Decimal? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class DatapointLocalUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUpdateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      lat;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      long;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? vAccuracy;

  @override
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

class DatapointLocalUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUncheckedUpdateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      lat;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      long;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? vAccuracy;

  @override
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

class DatapointLocalUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUpdateManyMutationInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      lat;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      long;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? vAccuracy;

  @override
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

class DatapointLocalUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUncheckedUpdateManyInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      lat;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      long;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? vAccuracy;

  @override
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

class DatapointLocalCountAggregateOutputType {
  const DatapointLocalCountAggregateOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$all,
  });

  factory DatapointLocalCountAggregateOutputType.fromJson(Map json) =>
      DatapointLocalCountAggregateOutputType(
        id: json['id'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
        $all: json['_all'],
      );

  final int? id;

  final int? lat;

  final int? long;

  final int? speed;

  final int? heading;

  final int? depth;

  final int? hAccuracy;

  final int? vAccuracy;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_all': $all,
      };
}

class DatapointLocalAvgAggregateOutputType {
  const DatapointLocalAvgAggregateOutputType({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointLocalAvgAggregateOutputType.fromJson(Map json) =>
      DatapointLocalAvgAggregateOutputType(
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
      );

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointLocalSumAggregateOutputType {
  const DatapointLocalSumAggregateOutputType({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointLocalSumAggregateOutputType.fromJson(Map json) =>
      DatapointLocalSumAggregateOutputType(
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
      );

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointLocalMinAggregateOutputType {
  const DatapointLocalMinAggregateOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointLocalMinAggregateOutputType.fromJson(Map json) =>
      DatapointLocalMinAggregateOutputType(
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

class DatapointLocalMaxAggregateOutputType {
  const DatapointLocalMaxAggregateOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointLocalMaxAggregateOutputType.fromJson(Map json) =>
      DatapointLocalMaxAggregateOutputType(
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

class DatapointLocalGroupByOutputType {
  const DatapointLocalGroupByOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory DatapointLocalGroupByOutputType.fromJson(Map json) =>
      DatapointLocalGroupByOutputType(
        id: json['id'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
        $count: json['_count'] is Map
            ? _i2.DatapointLocalCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.DatapointLocalAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.DatapointLocalSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.DatapointLocalMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.DatapointLocalMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final _i2.DatapointLocalCountAggregateOutputType? $count;

  final _i2.DatapointLocalAvgAggregateOutputType? $avg;

  final _i2.DatapointLocalSumAggregateOutputType? $sum;

  final _i2.DatapointLocalMinAggregateOutputType? $min;

  final _i2.DatapointLocalMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class DatapointLocalCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalCountOrderByAggregateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
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

class DatapointLocalAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalAvgOrderByAggregateInput({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointLocalMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalMaxOrderByAggregateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
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

class DatapointLocalMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalMinOrderByAggregateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
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

class DatapointLocalSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalSumOrderByAggregateInput({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointLocalOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalOrderByWithAggregationInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? speed;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? heading;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? depth;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? hAccuracy;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? vAccuracy;

  final _i2.DatapointLocalCountOrderByAggregateInput? $count;

  final _i2.DatapointLocalAvgOrderByAggregateInput? $avg;

  final _i2.DatapointLocalMaxOrderByAggregateInput? $max;

  final _i2.DatapointLocalMinOrderByAggregateInput? $min;

  final _i2.DatapointLocalSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedDecimalWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDecimalWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? equals;

  final _i1
      .PrismaUnion<Iterable<_i1.Decimal>, _i1.Reference<Iterable<_i1.Decimal>>>?
      $in;

  final _i1
      .PrismaUnion<Iterable<_i1.Decimal>, _i1.Reference<Iterable<_i1.Decimal>>>?
      notIn;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lte;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gte;

  final _i1.PrismaUnion<_i1.Decimal, _i2.NestedDecimalWithAggregatesFilter>?
      not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDecimalFilter? $avg;

  final _i2.NestedDecimalFilter? $sum;

  final _i2.NestedDecimalFilter? $min;

  final _i2.NestedDecimalFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class DecimalWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DecimalWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? equals;

  final _i1
      .PrismaUnion<Iterable<_i1.Decimal>, _i1.Reference<Iterable<_i1.Decimal>>>?
      $in;

  final _i1
      .PrismaUnion<Iterable<_i1.Decimal>, _i1.Reference<Iterable<_i1.Decimal>>>?
      notIn;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lte;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gte;

  final _i1.PrismaUnion<_i1.Decimal, _i2.NestedDecimalWithAggregatesFilter>?
      not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDecimalFilter? $avg;

  final _i2.NestedDecimalFilter? $sum;

  final _i2.NestedDecimalFilter? $min;

  final _i2.NestedDecimalFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedDecimalNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDecimalNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i1.Decimal,
      _i1.PrismaUnion<_i1.Reference<_i1.Decimal>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<
      Iterable<_i1.Decimal>,
      _i1
      .PrismaUnion<_i1.Reference<Iterable<_i1.Decimal>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<
          Iterable<_i1.Decimal>,
          _i1
          .PrismaUnion<_i1.Reference<Iterable<_i1.Decimal>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lte;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gte;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NestedDecimalNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDecimalNullableFilter? $avg;

  final _i2.NestedDecimalNullableFilter? $sum;

  final _i2.NestedDecimalNullableFilter? $min;

  final _i2.NestedDecimalNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class DecimalNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DecimalNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<_i1.Decimal,
      _i1.PrismaUnion<_i1.Reference<_i1.Decimal>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<
      Iterable<_i1.Decimal>,
      _i1
      .PrismaUnion<_i1.Reference<Iterable<_i1.Decimal>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<
          Iterable<_i1.Decimal>,
          _i1
          .PrismaUnion<_i1.Reference<Iterable<_i1.Decimal>>, _i1.PrismaNull>>?
      notIn;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? lte;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gt;

  final _i1.PrismaUnion<_i1.Decimal, _i1.Reference<_i1.Decimal>>? gte;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NestedDecimalNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedDecimalNullableFilter? $avg;

  final _i2.NestedDecimalNullableFilter? $sum;

  final _i2.NestedDecimalNullableFilter? $min;

  final _i2.NestedDecimalNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class DatapointLocalScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<_i2.DatapointLocalScalarWhereWithAggregatesInput,
      Iterable<_i2.DatapointLocalScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.DatapointLocalScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointLocalScalarWhereWithAggregatesInput,
      Iterable<_i2.DatapointLocalScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.DecimalWithAggregatesFilter, _i1.Decimal>? lat;

  final _i1.PrismaUnion<_i2.DecimalWithAggregatesFilter, _i1.Decimal>? long;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
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

class DatapointLocalCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalCountAggregateOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$all,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_all': $all,
      };
}

class DatapointLocalGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalGroupByOutputTypeCountArgs({this.select});

  final _i2.DatapointLocalCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointLocalAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalAvgAggregateOutputTypeSelect({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointLocalGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalGroupByOutputTypeAvgArgs({this.select});

  final _i2.DatapointLocalAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointLocalSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalSumAggregateOutputTypeSelect({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointLocalGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalGroupByOutputTypeSumArgs({this.select});

  final _i2.DatapointLocalSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointLocalMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalMinAggregateOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
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

class DatapointLocalGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalGroupByOutputTypeMinArgs({this.select});

  final _i2.DatapointLocalMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointLocalMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalMaxAggregateOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
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

class DatapointLocalGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalGroupByOutputTypeMaxArgs({this.select});

  final _i2.DatapointLocalMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointLocalGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalGroupByOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateDatapointLocal {
  const AggregateDatapointLocal({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateDatapointLocal.fromJson(Map json) => AggregateDatapointLocal(
        $count: json['_count'] is Map
            ? _i2.DatapointLocalCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.DatapointLocalAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.DatapointLocalSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.DatapointLocalMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.DatapointLocalMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.DatapointLocalCountAggregateOutputType? $count;

  final _i2.DatapointLocalAvgAggregateOutputType? $avg;

  final _i2.DatapointLocalSumAggregateOutputType? $sum;

  final _i2.DatapointLocalMinAggregateOutputType? $min;

  final _i2.DatapointLocalMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateDatapointLocalCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointLocalCountArgs({this.select});

  final _i2.DatapointLocalCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointLocalAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointLocalAvgArgs({this.select});

  final _i2.DatapointLocalAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointLocalSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointLocalSumArgs({this.select});

  final _i2.DatapointLocalSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointLocalMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointLocalMinArgs({this.select});

  final _i2.DatapointLocalMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointLocalMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointLocalMaxArgs({this.select});

  final _i2.DatapointLocalMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointLocalSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointLocalSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointLocalCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointLocalAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointLocalSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointLocalMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointLocalMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class DatapointUploadedWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<_i2.DatapointUploadedWhereInput,
      Iterable<_i2.DatapointUploadedWhereInput>>? AND;

  final Iterable<_i2.DatapointUploadedWhereInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointUploadedWhereInput,
      Iterable<_i2.DatapointUploadedWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.DecimalFilter, _i1.Decimal>? lat;

  final _i1.PrismaUnion<_i2.DecimalFilter, _i1.Decimal>? long;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
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

class DatapointUploadedWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.DatapointUploadedWhereInput,
      Iterable<_i2.DatapointUploadedWhereInput>>? AND;

  final Iterable<_i2.DatapointUploadedWhereInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointUploadedWhereInput,
      Iterable<_i2.DatapointUploadedWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DecimalFilter, _i1.Decimal>? lat;

  final _i1.PrismaUnion<_i2.DecimalFilter, _i1.Decimal>? long;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<_i2.DecimalNullableFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointUploadedSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
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

class DatapointUploadedOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedOrderByWithRelationInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? speed;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? heading;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? depth;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? hAccuracy;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? vAccuracy;

  @override
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

enum DatapointUploadedScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Datapoint_uploaded'),
  lat<_i1.Decimal>('lat', 'Datapoint_uploaded'),
  long<_i1.Decimal>('long', 'Datapoint_uploaded'),
  speed<_i1.Decimal>('speed', 'Datapoint_uploaded'),
  heading<_i1.Decimal>('heading', 'Datapoint_uploaded'),
  depth<_i1.Decimal>('depth', 'Datapoint_uploaded'),
  hAccuracy<_i1.Decimal>('h_accuracy', 'Datapoint_uploaded'),
  vAccuracy<_i1.Decimal>('v_accuracy', 'Datapoint_uploaded');

  const DatapointUploadedScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class DatapointUploadedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedCreateInput({
    this.id,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final String? id;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  @override
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

class DatapointUploadedUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedUncheckedCreateInput({
    this.id,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final String? id;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  @override
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

class DatapointUploadedCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedCreateManyInput({
    this.id,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final String? id;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  @override
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

class CreateManyDatapointUploadedAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyDatapointUploadedAndReturnOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
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

class DatapointUploadedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedUpdateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      lat;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      long;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? vAccuracy;

  @override
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

class DatapointUploadedUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedUncheckedUpdateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      lat;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      long;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? vAccuracy;

  @override
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

class DatapointUploadedUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedUpdateManyMutationInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      lat;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      long;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? vAccuracy;

  @override
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

class DatapointUploadedUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedUncheckedUpdateManyInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      lat;

  final _i1.PrismaUnion<_i1.Decimal, _i2.DecimalFieldUpdateOperationsInput>?
      long;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<
      _i1.Decimal,
      _i1.PrismaUnion<_i2.NullableDecimalFieldUpdateOperationsInput,
          _i1.PrismaNull>>? vAccuracy;

  @override
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

class DatapointUploadedCountAggregateOutputType {
  const DatapointUploadedCountAggregateOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$all,
  });

  factory DatapointUploadedCountAggregateOutputType.fromJson(Map json) =>
      DatapointUploadedCountAggregateOutputType(
        id: json['id'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
        $all: json['_all'],
      );

  final int? id;

  final int? lat;

  final int? long;

  final int? speed;

  final int? heading;

  final int? depth;

  final int? hAccuracy;

  final int? vAccuracy;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_all': $all,
      };
}

class DatapointUploadedAvgAggregateOutputType {
  const DatapointUploadedAvgAggregateOutputType({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointUploadedAvgAggregateOutputType.fromJson(Map json) =>
      DatapointUploadedAvgAggregateOutputType(
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
      );

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointUploadedSumAggregateOutputType {
  const DatapointUploadedSumAggregateOutputType({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointUploadedSumAggregateOutputType.fromJson(Map json) =>
      DatapointUploadedSumAggregateOutputType(
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
      );

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointUploadedMinAggregateOutputType {
  const DatapointUploadedMinAggregateOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointUploadedMinAggregateOutputType.fromJson(Map json) =>
      DatapointUploadedMinAggregateOutputType(
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

class DatapointUploadedMaxAggregateOutputType {
  const DatapointUploadedMaxAggregateOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  factory DatapointUploadedMaxAggregateOutputType.fromJson(Map json) =>
      DatapointUploadedMaxAggregateOutputType(
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

class DatapointUploadedGroupByOutputType {
  const DatapointUploadedGroupByOutputType({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory DatapointUploadedGroupByOutputType.fromJson(Map json) =>
      DatapointUploadedGroupByOutputType(
        id: json['id'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
        $count: json['_count'] is Map
            ? _i2.DatapointUploadedCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.DatapointUploadedAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.DatapointUploadedSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.DatapointUploadedMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.DatapointUploadedMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final _i2.DatapointUploadedCountAggregateOutputType? $count;

  final _i2.DatapointUploadedAvgAggregateOutputType? $avg;

  final _i2.DatapointUploadedSumAggregateOutputType? $sum;

  final _i2.DatapointUploadedMinAggregateOutputType? $min;

  final _i2.DatapointUploadedMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class DatapointUploadedCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedCountOrderByAggregateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
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

class DatapointUploadedAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedAvgOrderByAggregateInput({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointUploadedMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedMaxOrderByAggregateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
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

class DatapointUploadedMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedMinOrderByAggregateInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
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

class DatapointUploadedSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedSumOrderByAggregateInput({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointUploadedOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedOrderByWithAggregationInput({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? speed;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? heading;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? depth;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? hAccuracy;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? vAccuracy;

  final _i2.DatapointUploadedCountOrderByAggregateInput? $count;

  final _i2.DatapointUploadedAvgOrderByAggregateInput? $avg;

  final _i2.DatapointUploadedMaxOrderByAggregateInput? $max;

  final _i2.DatapointUploadedMinOrderByAggregateInput? $min;

  final _i2.DatapointUploadedSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class DatapointUploadedScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final _i1.PrismaUnion<_i2.DatapointUploadedScalarWhereWithAggregatesInput,
      Iterable<_i2.DatapointUploadedScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.DatapointUploadedScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointUploadedScalarWhereWithAggregatesInput,
      Iterable<_i2.DatapointUploadedScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.DecimalWithAggregatesFilter, _i1.Decimal>? lat;

  final _i1.PrismaUnion<_i2.DecimalWithAggregatesFilter, _i1.Decimal>? long;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? speed;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? heading;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? depth;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? hAccuracy;

  final _i1.PrismaUnion<_i2.DecimalNullableWithAggregatesFilter,
      _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>>? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
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

class DatapointUploadedCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedCountAggregateOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$all,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_all': $all,
      };
}

class DatapointUploadedGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedGroupByOutputTypeCountArgs({this.select});

  final _i2.DatapointUploadedCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointUploadedAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedAvgAggregateOutputTypeSelect({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointUploadedGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedGroupByOutputTypeAvgArgs({this.select});

  final _i2.DatapointUploadedAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointUploadedSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedSumAggregateOutputTypeSelect({
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
      };
}

class DatapointUploadedGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedGroupByOutputTypeSumArgs({this.select});

  final _i2.DatapointUploadedSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointUploadedMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedMinAggregateOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
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

class DatapointUploadedGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedGroupByOutputTypeMinArgs({this.select});

  final _i2.DatapointUploadedMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointUploadedMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedMaxAggregateOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  @override
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

class DatapointUploadedGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedGroupByOutputTypeMaxArgs({this.select});

  final _i2.DatapointUploadedMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class DatapointUploadedGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointUploadedGroupByOutputTypeSelect({
    this.id,
    this.lat,
    this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final _i1.PrismaUnion<bool, _i2.DatapointUploadedGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.DatapointUploadedGroupByOutputTypeAvgArgs>?
      $avg;

  final _i1.PrismaUnion<bool, _i2.DatapointUploadedGroupByOutputTypeSumArgs>?
      $sum;

  final _i1.PrismaUnion<bool, _i2.DatapointUploadedGroupByOutputTypeMinArgs>?
      $min;

  final _i1.PrismaUnion<bool, _i2.DatapointUploadedGroupByOutputTypeMaxArgs>?
      $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateDatapointUploaded {
  const AggregateDatapointUploaded({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateDatapointUploaded.fromJson(Map json) =>
      AggregateDatapointUploaded(
        $count: json['_count'] is Map
            ? _i2.DatapointUploadedCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.DatapointUploadedAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.DatapointUploadedSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.DatapointUploadedMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.DatapointUploadedMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.DatapointUploadedCountAggregateOutputType? $count;

  final _i2.DatapointUploadedAvgAggregateOutputType? $avg;

  final _i2.DatapointUploadedSumAggregateOutputType? $sum;

  final _i2.DatapointUploadedMinAggregateOutputType? $min;

  final _i2.DatapointUploadedMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateDatapointUploadedCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointUploadedCountArgs({this.select});

  final _i2.DatapointUploadedCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointUploadedAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointUploadedAvgArgs({this.select});

  final _i2.DatapointUploadedAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointUploadedSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointUploadedSumArgs({this.select});

  final _i2.DatapointUploadedSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointUploadedMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointUploadedMinArgs({this.select});

  final _i2.DatapointUploadedMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointUploadedMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointUploadedMaxArgs({this.select});

  final _i2.DatapointUploadedMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateDatapointUploadedSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateDatapointUploadedSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointUploadedCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointUploadedAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointUploadedSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointUploadedMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateDatapointUploadedMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
