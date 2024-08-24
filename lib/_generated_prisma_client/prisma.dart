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

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? propulsion;

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

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? propulsion;

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

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? propulsion;

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
  propulsion<String>('propulsion', 'Datapoint_local'),
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
    this.propulsion,
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

  final _i1.PrismaUnion<String, _i1.PrismaNull>? propulsion;

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
    this.propulsion,
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

  final _i1.PrismaUnion<String, _i1.PrismaNull>? propulsion;

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
    this.propulsion,
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

  final _i1.PrismaUnion<String, _i1.PrismaNull>? propulsion;

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

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
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

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? propulsion;

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

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? propulsion;

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

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? propulsion;

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

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? propulsion;

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
        uploaded: json['uploaded'],
      );

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final double? uploaded;

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
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
        uploaded: json['uploaded'],
      );

  final _i1.Decimal? lat;

  final _i1.Decimal? long;

  final _i1.Decimal? speed;

  final _i1.Decimal? heading;

  final _i1.Decimal? depth;

  final _i1.Decimal? hAccuracy;

  final _i1.Decimal? vAccuracy;

  final int? uploaded;

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'long': long,
        'speed': speed,
        'heading': heading,
        'depth': depth,
        'h_accuracy': hAccuracy,
        'v_accuracy': vAccuracy,
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

  final String? propulsion;

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
    this.uploaded,
  });

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

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
    this.uploaded,
  });

  final _i2.SortOrder? lat;

  final _i2.SortOrder? long;

  final _i2.SortOrder? speed;

  final _i2.SortOrder? heading;

  final _i2.SortOrder? depth;

  final _i2.SortOrder? hAccuracy;

  final _i2.SortOrder? vAccuracy;

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

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? propulsion;

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

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? propulsion;

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
    this.uploaded,
  });

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

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
    this.uploaded,
  });

  final bool? lat;

  final bool? long;

  final bool? speed;

  final bool? heading;

  final bool? depth;

  final bool? hAccuracy;

  final bool? vAccuracy;

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
