// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

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

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

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
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

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

class NestedDateTimeFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

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

class DateTimeFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeFilter>? not;

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

  final Iterable<_i1.Decimal>? $in;

  final Iterable<_i1.Decimal>? notIn;

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

  final Iterable<_i1.Decimal>? $in;

  final Iterable<_i1.Decimal>? notIn;

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

  final _i1.PrismaUnion<Iterable<_i1.Decimal>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<_i1.Decimal>, _i1.PrismaNull>? notIn;

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

  final _i1.PrismaUnion<Iterable<_i1.Decimal>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<_i1.Decimal>, _i1.PrismaNull>? notIn;

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

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

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

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
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

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

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

class DatapointLocalWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalWhereInput({
    this.AND,
    this.OR,
    this.NOT,
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

  final _i1.PrismaUnion<_i2.DatapointLocalWhereInput,
      Iterable<_i2.DatapointLocalWhereInput>>? AND;

  final Iterable<_i2.DatapointLocalWhereInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointLocalWhereInput,
      Iterable<_i2.DatapointLocalWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? time;

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

  final _i1.PrismaUnion<_i2.IntFilter, int>? propulsion;

  final _i1.PrismaUnion<_i2.IntFilter, int>? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'time': time,
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

class DatapointLocalWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
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

  final String? id;

  final _i1.PrismaUnion<_i2.DatapointLocalWhereInput,
      Iterable<_i2.DatapointLocalWhereInput>>? AND;

  final Iterable<_i2.DatapointLocalWhereInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointLocalWhereInput,
      Iterable<_i2.DatapointLocalWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? time;

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

  final _i1.PrismaUnion<_i2.IntFilter, int>? propulsion;

  final _i1.PrismaUnion<_i2.IntFilter, int>? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'time': time,
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

class DatapointLocalSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalSelect({
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

  final bool? id;

  final bool? time;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? speed;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? heading;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? depth;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? hAccuracy;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? vAccuracy;

  final _i2.SortOrder? propulsion;

  final _i2.SortOrder? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

enum DatapointLocalScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Datapoint_local'),
  time<DateTime>('time', 'Datapoint_local'),
  lat<_i1.Decimal>('lat', 'Datapoint_local'),
  long<_i1.Decimal>('long', 'Datapoint_local'),
  speed<_i1.Decimal>('speed', 'Datapoint_local'),
  heading<_i1.Decimal>('heading', 'Datapoint_local'),
  depth<_i1.Decimal>('depth', 'Datapoint_local'),
  hAccuracy<_i1.Decimal>('h_accuracy', 'Datapoint_local'),
  vAccuracy<_i1.Decimal>('v_accuracy', 'Datapoint_local'),
  propulsion<int>('propulsion', 'Datapoint_local'),
  uploaded<int>('uploaded', 'Datapoint_local');

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
    this.time,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    required this.propulsion,
    this.uploaded,
  });

  final String? id;

  final DateTime? time;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  final int propulsion;

  final int? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class DatapointLocalUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUncheckedCreateInput({
    this.id,
    this.time,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    required this.propulsion,
    this.uploaded,
  });

  final String? id;

  final DateTime? time;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  final int propulsion;

  final int? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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
    this.time,
    required this.lat,
    required this.long,
    this.speed,
    this.heading,
    this.depth,
    this.hAccuracy,
    this.vAccuracy,
    required this.propulsion,
    this.uploaded,
  });

  final String? id;

  final DateTime? time;

  final _i1.Decimal lat;

  final _i1.Decimal long;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? speed;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? heading;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? depth;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? hAccuracy;

  final _i1.PrismaUnion<_i1.Decimal, _i1.PrismaNull>? vAccuracy;

  final int propulsion;

  final int? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class CreateManyDatapointLocalAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyDatapointLocalAndReturnOutputTypeSelect({
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

  final bool? id;

  final bool? time;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class DateTimeFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeFieldUpdateOperationsInput({this.set});

  final DateTime? set;

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

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? time;

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

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? propulsion;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class DatapointLocalUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUncheckedUpdateInput({
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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? time;

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

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? propulsion;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class DatapointLocalUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUpdateManyMutationInput({
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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? time;

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

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? propulsion;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class DatapointLocalUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalUncheckedUpdateManyInput({
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

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? time;

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

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? propulsion;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class UpdateManyDatapointLocalAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyDatapointLocalAndReturnOutputTypeSelect({
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

  final bool? id;

  final bool? time;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class DatapointLocalCountAggregateOutputType {
  const DatapointLocalCountAggregateOutputType({
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
    this.$all,
  });

  factory DatapointLocalCountAggregateOutputType.fromJson(Map json) =>
      DatapointLocalCountAggregateOutputType(
        id: json['id'],
        time: json['time'],
        lat: json['lat'],
        long: json['long'],
        speed: json['speed'],
        heading: json['heading'],
        depth: json['depth'],
        hAccuracy: json['h_accuracy'],
        vAccuracy: json['v_accuracy'],
        propulsion: json['propulsion'],
        uploaded: json['uploaded'],
        $all: json['_all'],
      );

  final int? id;

  final int? time;

  final int? lat;

  final int? long;

  final int? speed;

  final int? heading;

  final int? depth;

  final int? hAccuracy;

  final int? vAccuracy;

  final int? propulsion;

  final int? uploaded;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        'propulsion': propulsion,
        'uploaded': uploaded,
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
    this.propulsion,
    this.uploaded,
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
        propulsion: json['propulsion'],
        uploaded: json['uploaded'],
      );

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final double? propulsion;

  final double? uploaded;

  Map<String, dynamic> toJson() => {
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

class DatapointLocalSumAggregateOutputType {
  const DatapointLocalSumAggregateOutputType({
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

  factory DatapointLocalSumAggregateOutputType.fromJson(Map json) =>
      DatapointLocalSumAggregateOutputType(
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

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final int? propulsion;

  final int? uploaded;

  Map<String, dynamic> toJson() => {
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

class DatapointLocalMinAggregateOutputType {
  const DatapointLocalMinAggregateOutputType({
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

  factory DatapointLocalMinAggregateOutputType.fromJson(Map json) =>
      DatapointLocalMinAggregateOutputType(
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

  final int? propulsion;

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

class DatapointLocalMaxAggregateOutputType {
  const DatapointLocalMaxAggregateOutputType({
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

  factory DatapointLocalMaxAggregateOutputType.fromJson(Map json) =>
      DatapointLocalMaxAggregateOutputType(
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

  final int? propulsion;

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

class DatapointLocalGroupByOutputType {
  const DatapointLocalGroupByOutputType({
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
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory DatapointLocalGroupByOutputType.fromJson(Map json) =>
      DatapointLocalGroupByOutputType(
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

  final DateTime? time;

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final int? propulsion;

  final int? uploaded;

  final _i2.DatapointLocalCountAggregateOutputType? $count;

  final _i2.DatapointLocalAvgAggregateOutputType? $avg;

  final _i2.DatapointLocalSumAggregateOutputType? $sum;

  final _i2.DatapointLocalMinAggregateOutputType? $min;

  final _i2.DatapointLocalMaxAggregateOutputType? $max;

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

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  final _i2.SortOrder? propulsion;

  final _i2.SortOrder? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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
    this.propulsion,
    this.uploaded,
  });

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  final _i2.SortOrder? propulsion;

  final _i2.SortOrder? uploaded;

  @override
  Map<String, dynamic> toJson() => {
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

class DatapointLocalMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalMaxOrderByAggregateInput({
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

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  final _i2.SortOrder? propulsion;

  final _i2.SortOrder? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

class DatapointLocalMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalMinOrderByAggregateInput({
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

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  final _i2.SortOrder? propulsion;

  final _i2.SortOrder? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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
    this.propulsion,
    this.uploaded,
  });

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

  final _i2.SortOrder? propulsion;

  final _i2.SortOrder? uploaded;

  @override
  Map<String, dynamic> toJson() => {
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

class DatapointLocalOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalOrderByWithAggregationInput({
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
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? speed;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? heading;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? depth;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? hAccuracy;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? vAccuracy;

  final _i2.SortOrder? propulsion;

  final _i2.SortOrder? uploaded;

  final _i2.DatapointLocalCountOrderByAggregateInput? $count;

  final _i2.DatapointLocalAvgOrderByAggregateInput? $avg;

  final _i2.DatapointLocalMaxOrderByAggregateInput? $max;

  final _i2.DatapointLocalMinOrderByAggregateInput? $min;

  final _i2.DatapointLocalSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        'propulsion': propulsion,
        'uploaded': uploaded,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
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

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

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
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final Iterable<String>? $in;

  final Iterable<String>? notIn;

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

class NestedDateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

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
        '_min': $min,
        '_max': $max,
      };
}

class DateTimeWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? equals;

  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? lte;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gt;

  final _i1.PrismaUnion<DateTime, _i1.Reference<DateTime>>? gte;

  final _i1.PrismaUnion<DateTime, _i2.NestedDateTimeWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedDateTimeFilter? $min;

  final _i2.NestedDateTimeFilter? $max;

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

  final Iterable<_i1.Decimal>? $in;

  final Iterable<_i1.Decimal>? notIn;

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

  final Iterable<_i1.Decimal>? $in;

  final Iterable<_i1.Decimal>? notIn;

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

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.PrismaNull>? notIn;

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

  final _i1.PrismaUnion<Iterable<_i1.Decimal>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<_i1.Decimal>, _i1.PrismaNull>? notIn;

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

  final _i1.PrismaUnion<Iterable<_i1.Decimal>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<_i1.Decimal>, _i1.PrismaNull>? notIn;

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

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

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

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
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

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

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

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
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

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

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

  final _i1.PrismaUnion<_i2.DatapointLocalScalarWhereWithAggregatesInput,
      Iterable<_i2.DatapointLocalScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.DatapointLocalScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.DatapointLocalScalarWhereWithAggregatesInput,
      Iterable<_i2.DatapointLocalScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? time;

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

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? propulsion;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'time': time,
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

class DatapointLocalCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const DatapointLocalCountAggregateOutputTypeSelect({
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
    this.$all,
  });

  final bool? id;

  final bool? time;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        'propulsion': propulsion,
        'uploaded': uploaded,
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
    this.propulsion,
    this.uploaded,
  });

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  @override
  Map<String, dynamic> toJson() => {
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
    this.propulsion,
    this.uploaded,
  });

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  @override
  Map<String, dynamic> toJson() => {
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

  final bool? id;

  final bool? time;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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

  final bool? id;

  final bool? time;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
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
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? time;

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

  final bool? propulsion;

  final bool? uploaded;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.DatapointLocalGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
        'propulsion': propulsion,
        'uploaded': uploaded,
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

class LogMessageWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.time,
    this.message,
  });

  final _i1.PrismaUnion<_i2.LogMessageWhereInput,
      Iterable<_i2.LogMessageWhereInput>>? AND;

  final Iterable<_i2.LogMessageWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LogMessageWhereInput,
      Iterable<_i2.LogMessageWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? time;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.time,
    this.message,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.LogMessageWhereInput,
      Iterable<_i2.LogMessageWhereInput>>? AND;

  final Iterable<_i2.LogMessageWhereInput>? OR;

  final _i1.PrismaUnion<_i2.LogMessageWhereInput,
      Iterable<_i2.LogMessageWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.DateTimeFilter, DateTime>? time;

  final _i1.PrismaUnion<_i2.StringFilter, String>? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'time': time,
        'message': message,
      };
}

class LogMessageSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageSelect({
    this.id,
    this.time,
    this.message,
  });

  final bool? id;

  final bool? time;

  final bool? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageOrderByWithRelationInput({
    this.id,
    this.time,
    this.message,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

enum LogMessageScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'LogMessage'),
  time<DateTime>('time', 'LogMessage'),
  message<String>('message', 'LogMessage');

  const LogMessageScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class LogMessageCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageCreateInput({
    this.id,
    this.time,
    required this.message,
  });

  final String? id;

  final DateTime? time;

  final String message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageUncheckedCreateInput({
    this.id,
    this.time,
    required this.message,
  });

  final String? id;

  final DateTime? time;

  final String message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageCreateManyInput({
    this.id,
    this.time,
    required this.message,
  });

  final String? id;

  final DateTime? time;

  final String message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class CreateManyLogMessageAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyLogMessageAndReturnOutputTypeSelect({
    this.id,
    this.time,
    this.message,
  });

  final bool? id;

  final bool? time;

  final bool? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageUpdateInput({
    this.id,
    this.time,
    this.message,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? time;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageUncheckedUpdateInput({
    this.id,
    this.time,
    this.message,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? time;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageUpdateManyMutationInput({
    this.id,
    this.time,
    this.message,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? time;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageUncheckedUpdateManyInput({
    this.id,
    this.time,
    this.message,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<DateTime, _i2.DateTimeFieldUpdateOperationsInput>? time;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class UpdateManyLogMessageAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyLogMessageAndReturnOutputTypeSelect({
    this.id,
    this.time,
    this.message,
  });

  final bool? id;

  final bool? time;

  final bool? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageCountAggregateOutputType {
  const LogMessageCountAggregateOutputType({
    this.id,
    this.time,
    this.message,
    this.$all,
  });

  factory LogMessageCountAggregateOutputType.fromJson(Map json) =>
      LogMessageCountAggregateOutputType(
        id: json['id'],
        time: json['time'],
        message: json['message'],
        $all: json['_all'],
      );

  final int? id;

  final int? time;

  final int? message;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
        '_all': $all,
      };
}

class LogMessageMinAggregateOutputType {
  const LogMessageMinAggregateOutputType({
    this.id,
    this.time,
    this.message,
  });

  factory LogMessageMinAggregateOutputType.fromJson(Map json) =>
      LogMessageMinAggregateOutputType(
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

class LogMessageMaxAggregateOutputType {
  const LogMessageMaxAggregateOutputType({
    this.id,
    this.time,
    this.message,
  });

  factory LogMessageMaxAggregateOutputType.fromJson(Map json) =>
      LogMessageMaxAggregateOutputType(
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

class LogMessageGroupByOutputType {
  const LogMessageGroupByOutputType({
    this.id,
    this.time,
    this.message,
    this.$count,
    this.$min,
    this.$max,
  });

  factory LogMessageGroupByOutputType.fromJson(Map json) =>
      LogMessageGroupByOutputType(
        id: json['id'],
        time: switch (json['time']) {
          DateTime value => value,
          String value => DateTime.parse(value),
          _ => json['time']
        },
        message: json['message'],
        $count: json['_count'] is Map
            ? _i2.LogMessageCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LogMessageMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LogMessageMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final DateTime? time;

  final String? message;

  final _i2.LogMessageCountAggregateOutputType? $count;

  final _i2.LogMessageMinAggregateOutputType? $min;

  final _i2.LogMessageMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time?.toIso8601String(),
        'message': message,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class LogMessageCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageCountOrderByAggregateInput({
    this.id,
    this.time,
    this.message,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageMaxOrderByAggregateInput({
    this.id,
    this.time,
    this.message,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageMinOrderByAggregateInput({
    this.id,
    this.time,
    this.message,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageOrderByWithAggregationInput({
    this.id,
    this.time,
    this.message,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? time;

  final _i2.SortOrder? message;

  final _i2.LogMessageCountOrderByAggregateInput? $count;

  final _i2.LogMessageMaxOrderByAggregateInput? $max;

  final _i2.LogMessageMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class LogMessageScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.time,
    this.message,
  });

  final _i1.PrismaUnion<_i2.LogMessageScalarWhereWithAggregatesInput,
      Iterable<_i2.LogMessageScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.LogMessageScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.LogMessageScalarWhereWithAggregatesInput,
      Iterable<_i2.LogMessageScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.DateTimeWithAggregatesFilter, DateTime>? time;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? message;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageCountAggregateOutputTypeSelect({
    this.id,
    this.time,
    this.message,
    this.$all,
  });

  final bool? id;

  final bool? time;

  final bool? message;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
        '_all': $all,
      };
}

class LogMessageGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageGroupByOutputTypeCountArgs({this.select});

  final _i2.LogMessageCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LogMessageMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageMinAggregateOutputTypeSelect({
    this.id,
    this.time,
    this.message,
  });

  final bool? id;

  final bool? time;

  final bool? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageGroupByOutputTypeMinArgs({this.select});

  final _i2.LogMessageMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LogMessageMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageMaxAggregateOutputTypeSelect({
    this.id,
    this.time,
    this.message,
  });

  final bool? id;

  final bool? time;

  final bool? message;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
      };
}

class LogMessageGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageGroupByOutputTypeMaxArgs({this.select});

  final _i2.LogMessageMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class LogMessageGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const LogMessageGroupByOutputTypeSelect({
    this.id,
    this.time,
    this.message,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? time;

  final bool? message;

  final _i1.PrismaUnion<bool, _i2.LogMessageGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.LogMessageGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.LogMessageGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'time': time,
        'message': message,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateLogMessage {
  const AggregateLogMessage({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateLogMessage.fromJson(Map json) => AggregateLogMessage(
        $count: json['_count'] is Map
            ? _i2.LogMessageCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.LogMessageMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.LogMessageMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.LogMessageCountAggregateOutputType? $count;

  final _i2.LogMessageMinAggregateOutputType? $min;

  final _i2.LogMessageMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateLogMessageCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLogMessageCountArgs({this.select});

  final _i2.LogMessageCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLogMessageMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLogMessageMinArgs({this.select});

  final _i2.LogMessageMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLogMessageMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLogMessageMaxArgs({this.select});

  final _i2.LogMessageMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateLogMessageSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateLogMessageSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateLogMessageCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateLogMessageMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateLogMessageMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedBoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class BoolFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFilter({
    this.equals,
    this.not,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
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

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

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

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
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

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

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

class StoredSettingsWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i1.PrismaUnion<_i2.StoredSettingsWhereInput,
      Iterable<_i2.StoredSettingsWhereInput>>? AND;

  final Iterable<_i2.StoredSettingsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoredSettingsWhereInput,
      Iterable<_i2.StoredSettingsWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? ownSource;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? ip;

  final _i1.PrismaUnion<_i2.IntFilter, int>? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsWhereUniqueInput({
    this.id,
    this.AND,
    this.OR,
    this.NOT,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final String? id;

  final _i1.PrismaUnion<_i2.StoredSettingsWhereInput,
      Iterable<_i2.StoredSettingsWhereInput>>? AND;

  final Iterable<_i2.StoredSettingsWhereInput>? OR;

  final _i1.PrismaUnion<_i2.StoredSettingsWhereInput,
      Iterable<_i2.StoredSettingsWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.BoolFilter, bool>? ownSource;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? ip;

  final _i1.PrismaUnion<_i2.IntFilter, int>? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsSelect({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final bool? id;

  final bool? ownSource;

  final bool? ip;

  final bool? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsOrderByWithRelationInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? ownSource;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? ip;

  final _i2.SortOrder? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

enum StoredSettingsScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'StoredSettings'),
  ownSource<bool>('own_source', 'StoredSettings'),
  ip<String>('ip', 'StoredSettings'),
  lastMode<int>('lastMode', 'StoredSettings');

  const StoredSettingsScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class StoredSettingsCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsCreateInput({
    this.id,
    required this.ownSource,
    this.ip,
    required this.lastMode,
  });

  final String? id;

  final bool ownSource;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? ip;

  final int lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsUncheckedCreateInput({
    this.id,
    required this.ownSource,
    this.ip,
    required this.lastMode,
  });

  final String? id;

  final bool ownSource;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? ip;

  final int lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsCreateManyInput({
    this.id,
    required this.ownSource,
    this.ip,
    required this.lastMode,
  });

  final String? id;

  final bool ownSource;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? ip;

  final int lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class CreateManyStoredSettingsAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const CreateManyStoredSettingsAndReturnOutputTypeSelect({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final bool? id;

  final bool? ownSource;

  final bool? ip;

  final bool? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class BoolFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolFieldUpdateOperationsInput({this.set});

  final bool? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class StoredSettingsUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsUpdateInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? ownSource;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? ip;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsUncheckedUpdateInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? ownSource;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? ip;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsUpdateManyMutationInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? ownSource;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? ip;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsUncheckedUpdateManyInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<bool, _i2.BoolFieldUpdateOperationsInput>? ownSource;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? ip;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class UpdateManyStoredSettingsAndReturnOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UpdateManyStoredSettingsAndReturnOutputTypeSelect({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final bool? id;

  final bool? ownSource;

  final bool? ip;

  final bool? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsCountAggregateOutputType {
  const StoredSettingsCountAggregateOutputType({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
    this.$all,
  });

  factory StoredSettingsCountAggregateOutputType.fromJson(Map json) =>
      StoredSettingsCountAggregateOutputType(
        id: json['id'],
        ownSource: json['own_source'],
        ip: json['ip'],
        lastMode: json['lastMode'],
        $all: json['_all'],
      );

  final int? id;

  final int? ownSource;

  final int? ip;

  final int? lastMode;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
        '_all': $all,
      };
}

class StoredSettingsAvgAggregateOutputType {
  const StoredSettingsAvgAggregateOutputType({this.lastMode});

  factory StoredSettingsAvgAggregateOutputType.fromJson(Map json) =>
      StoredSettingsAvgAggregateOutputType(lastMode: json['lastMode']);

  final double? lastMode;

  Map<String, dynamic> toJson() => {'lastMode': lastMode};
}

class StoredSettingsSumAggregateOutputType {
  const StoredSettingsSumAggregateOutputType({this.lastMode});

  factory StoredSettingsSumAggregateOutputType.fromJson(Map json) =>
      StoredSettingsSumAggregateOutputType(lastMode: json['lastMode']);

  final int? lastMode;

  Map<String, dynamic> toJson() => {'lastMode': lastMode};
}

class StoredSettingsMinAggregateOutputType {
  const StoredSettingsMinAggregateOutputType({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  factory StoredSettingsMinAggregateOutputType.fromJson(Map json) =>
      StoredSettingsMinAggregateOutputType(
        id: json['id'],
        ownSource: json['own_source'],
        ip: json['ip'],
        lastMode: json['lastMode'],
      );

  final String? id;

  final bool? ownSource;

  final String? ip;

  final int? lastMode;

  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsMaxAggregateOutputType {
  const StoredSettingsMaxAggregateOutputType({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  factory StoredSettingsMaxAggregateOutputType.fromJson(Map json) =>
      StoredSettingsMaxAggregateOutputType(
        id: json['id'],
        ownSource: json['own_source'],
        ip: json['ip'],
        lastMode: json['lastMode'],
      );

  final String? id;

  final bool? ownSource;

  final String? ip;

  final int? lastMode;

  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsGroupByOutputType {
  const StoredSettingsGroupByOutputType({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory StoredSettingsGroupByOutputType.fromJson(Map json) =>
      StoredSettingsGroupByOutputType(
        id: json['id'],
        ownSource: json['own_source'],
        ip: json['ip'],
        lastMode: json['lastMode'],
        $count: json['_count'] is Map
            ? _i2.StoredSettingsCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.StoredSettingsAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.StoredSettingsSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.StoredSettingsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.StoredSettingsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final bool? ownSource;

  final String? ip;

  final int? lastMode;

  final _i2.StoredSettingsCountAggregateOutputType? $count;

  final _i2.StoredSettingsAvgAggregateOutputType? $avg;

  final _i2.StoredSettingsSumAggregateOutputType? $sum;

  final _i2.StoredSettingsMinAggregateOutputType? $min;

  final _i2.StoredSettingsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class StoredSettingsCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsCountOrderByAggregateInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? ownSource;

  final _i2.SortOrder? ip;

  final _i2.SortOrder? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsAvgOrderByAggregateInput({this.lastMode});

  final _i2.SortOrder? lastMode;

  @override
  Map<String, dynamic> toJson() => {'lastMode': lastMode};
}

class StoredSettingsMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsMaxOrderByAggregateInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? ownSource;

  final _i2.SortOrder? ip;

  final _i2.SortOrder? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsMinOrderByAggregateInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? ownSource;

  final _i2.SortOrder? ip;

  final _i2.SortOrder? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsSumOrderByAggregateInput({this.lastMode});

  final _i2.SortOrder? lastMode;

  @override
  Map<String, dynamic> toJson() => {'lastMode': lastMode};
}

class StoredSettingsOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsOrderByWithAggregationInput({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? ownSource;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? ip;

  final _i2.SortOrder? lastMode;

  final _i2.StoredSettingsCountOrderByAggregateInput? $count;

  final _i2.StoredSettingsAvgOrderByAggregateInput? $avg;

  final _i2.StoredSettingsMaxOrderByAggregateInput? $max;

  final _i2.StoredSettingsMinOrderByAggregateInput? $min;

  final _i2.StoredSettingsSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedBoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedBoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BoolWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BoolWithAggregatesFilter({
    this.equals,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i1.Reference<bool>>? equals;

  final _i1.PrismaUnion<bool, _i2.NestedBoolWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedBoolFilter? $min;

  final _i2.NestedBoolFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
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

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

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

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
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

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.PrismaNull>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

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

class StoredSettingsScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final _i1.PrismaUnion<_i2.StoredSettingsScalarWhereWithAggregatesInput,
      Iterable<_i2.StoredSettingsScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.StoredSettingsScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.StoredSettingsScalarWhereWithAggregatesInput,
      Iterable<_i2.StoredSettingsScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.BoolWithAggregatesFilter, bool>? ownSource;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? ip;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsCountAggregateOutputTypeSelect({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
    this.$all,
  });

  final bool? id;

  final bool? ownSource;

  final bool? ip;

  final bool? lastMode;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
        '_all': $all,
      };
}

class StoredSettingsGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsGroupByOutputTypeCountArgs({this.select});

  final _i2.StoredSettingsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoredSettingsAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsAvgAggregateOutputTypeSelect({this.lastMode});

  final bool? lastMode;

  @override
  Map<String, dynamic> toJson() => {'lastMode': lastMode};
}

class StoredSettingsGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsGroupByOutputTypeAvgArgs({this.select});

  final _i2.StoredSettingsAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoredSettingsSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsSumAggregateOutputTypeSelect({this.lastMode});

  final bool? lastMode;

  @override
  Map<String, dynamic> toJson() => {'lastMode': lastMode};
}

class StoredSettingsGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsGroupByOutputTypeSumArgs({this.select});

  final _i2.StoredSettingsSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoredSettingsMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsMinAggregateOutputTypeSelect({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final bool? id;

  final bool? ownSource;

  final bool? ip;

  final bool? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsGroupByOutputTypeMinArgs({this.select});

  final _i2.StoredSettingsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoredSettingsMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsMaxAggregateOutputTypeSelect({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
  });

  final bool? id;

  final bool? ownSource;

  final bool? ip;

  final bool? lastMode;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
      };
}

class StoredSettingsGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsGroupByOutputTypeMaxArgs({this.select});

  final _i2.StoredSettingsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class StoredSettingsGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StoredSettingsGroupByOutputTypeSelect({
    this.id,
    this.ownSource,
    this.ip,
    this.lastMode,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? ownSource;

  final bool? ip;

  final bool? lastMode;

  final _i1.PrismaUnion<bool, _i2.StoredSettingsGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.StoredSettingsGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.StoredSettingsGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.StoredSettingsGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.StoredSettingsGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'own_source': ownSource,
        'ip': ip,
        'lastMode': lastMode,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateStoredSettings {
  const AggregateStoredSettings({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateStoredSettings.fromJson(Map json) => AggregateStoredSettings(
        $count: json['_count'] is Map
            ? _i2.StoredSettingsCountAggregateOutputType.fromJson(
                json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.StoredSettingsAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.StoredSettingsSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.StoredSettingsMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.StoredSettingsMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.StoredSettingsCountAggregateOutputType? $count;

  final _i2.StoredSettingsAvgAggregateOutputType? $avg;

  final _i2.StoredSettingsSumAggregateOutputType? $sum;

  final _i2.StoredSettingsMinAggregateOutputType? $min;

  final _i2.StoredSettingsMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateStoredSettingsCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoredSettingsCountArgs({this.select});

  final _i2.StoredSettingsCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoredSettingsAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoredSettingsAvgArgs({this.select});

  final _i2.StoredSettingsAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoredSettingsSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoredSettingsSumArgs({this.select});

  final _i2.StoredSettingsSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoredSettingsMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoredSettingsMinArgs({this.select});

  final _i2.StoredSettingsMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoredSettingsMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoredSettingsMaxArgs({this.select});

  final _i2.StoredSettingsMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateStoredSettingsSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateStoredSettingsSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateStoredSettingsCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateStoredSettingsAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateStoredSettingsSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateStoredSettingsMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateStoredSettingsMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
