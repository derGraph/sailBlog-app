// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm_flutter/orm_flutter.dart' as _i5;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class DatapointLocalDelegate {
  const DatapointLocalDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.DatapointLocal?> findUnique({
    required _i3.DatapointLocalWhereUniqueInput where,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointLocal?>(
      action: 'findUniqueDatapoint_local',
      result: result,
      factory: (e) => e != null ? _i2.DatapointLocal.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.DatapointLocal> findUniqueOrThrow({
    required _i3.DatapointLocalWhereUniqueInput where,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointLocal>(
      action: 'findUniqueDatapoint_localOrThrow',
      result: result,
      factory: (e) => _i2.DatapointLocal.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DatapointLocal?> findFirst({
    _i3.DatapointLocalWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointLocalOrderByWithRelationInput>,
            _i3.DatapointLocalOrderByWithRelationInput>?
        orderBy,
    _i3.DatapointLocalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DatapointLocalScalar,
            Iterable<_i3.DatapointLocalScalar>>?
        distinct,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointLocal?>(
      action: 'findFirstDatapoint_local',
      result: result,
      factory: (e) => e != null ? _i2.DatapointLocal.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.DatapointLocal> findFirstOrThrow({
    _i3.DatapointLocalWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointLocalOrderByWithRelationInput>,
            _i3.DatapointLocalOrderByWithRelationInput>?
        orderBy,
    _i3.DatapointLocalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DatapointLocalScalar,
            Iterable<_i3.DatapointLocalScalar>>?
        distinct,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointLocal>(
      action: 'findFirstDatapoint_localOrThrow',
      result: result,
      factory: (e) => _i2.DatapointLocal.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.DatapointLocal>> findMany({
    _i3.DatapointLocalWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointLocalOrderByWithRelationInput>,
            _i3.DatapointLocalOrderByWithRelationInput>?
        orderBy,
    _i3.DatapointLocalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DatapointLocalScalar,
            Iterable<_i3.DatapointLocalScalar>>?
        distinct,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.DatapointLocal>>(
      action: 'findManyDatapoint_local',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.DatapointLocal.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.DatapointLocal> create({
    required _i1.PrismaUnion<_i3.DatapointLocalCreateInput,
            _i3.DatapointLocalUncheckedCreateInput>
        data,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointLocal>(
      action: 'createOneDatapoint_local',
      result: result,
      factory: (e) => _i2.DatapointLocal.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.DatapointLocalCreateManyInput,
              Iterable<_i3.DatapointLocalCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyDatapoint_local',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyDatapointLocalAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.DatapointLocalCreateManyInput,
            Iterable<_i3.DatapointLocalCreateManyInput>>
        data,
    _i3.CreateManyDatapointLocalAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyDatapointLocalAndReturnOutputType>>(
      action: 'createManyDatapoint_localAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyDatapointLocalAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.DatapointLocal?> update({
    required _i1.PrismaUnion<_i3.DatapointLocalUpdateInput,
            _i3.DatapointLocalUncheckedUpdateInput>
        data,
    required _i3.DatapointLocalWhereUniqueInput where,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointLocal?>(
      action: 'updateOneDatapoint_local',
      result: result,
      factory: (e) => e != null ? _i2.DatapointLocal.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.DatapointLocalUpdateManyMutationInput,
            _i3.DatapointLocalUncheckedUpdateManyInput>
        data,
    _i3.DatapointLocalWhereInput? where,
    int? limit,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyDatapoint_local',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.UpdateManyDatapointLocalAndReturnOutputType>>
      updateManyAndReturn({
    required _i1.PrismaUnion<_i3.DatapointLocalUpdateManyMutationInput,
            _i3.DatapointLocalUncheckedUpdateManyInput>
        data,
    _i3.DatapointLocalWhereInput? where,
    int? limit,
    _i3.UpdateManyDatapointLocalAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.updateManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.UpdateManyDatapointLocalAndReturnOutputType>>(
      action: 'updateManyDatapoint_localAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.UpdateManyDatapointLocalAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.DatapointLocal> upsert({
    required _i3.DatapointLocalWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.DatapointLocalCreateInput,
            _i3.DatapointLocalUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.DatapointLocalUpdateInput,
            _i3.DatapointLocalUncheckedUpdateInput>
        update,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointLocal>(
      action: 'upsertOneDatapoint_local',
      result: result,
      factory: (e) => _i2.DatapointLocal.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DatapointLocal?> delete({
    required _i3.DatapointLocalWhereUniqueInput where,
    _i3.DatapointLocalSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointLocal?>(
      action: 'deleteOneDatapoint_local',
      result: result,
      factory: (e) => e != null ? _i2.DatapointLocal.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.DatapointLocalWhereInput? where,
    int? limit,
  }) {
    final args = {
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyDatapoint_local',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.DatapointLocalGroupByOutputType>> groupBy({
    _i3.DatapointLocalWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointLocalOrderByWithAggregationInput>,
            _i3.DatapointLocalOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.DatapointLocalScalar>,
            _i3.DatapointLocalScalar>
        by,
    _i3.DatapointLocalScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.DatapointLocalGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.DatapointLocalGroupByOutputType>>(
      action: 'groupByDatapoint_local',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.DatapointLocalGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateDatapointLocal> aggregate({
    _i3.DatapointLocalWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointLocalOrderByWithRelationInput>,
            _i3.DatapointLocalOrderByWithRelationInput>?
        orderBy,
    _i3.DatapointLocalWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateDatapointLocalSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_local',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateDatapointLocal>(
      action: 'aggregateDatapoint_local',
      result: result,
      factory: (e) => _i3.AggregateDatapointLocal.fromJson(e),
    );
  }
}

class LogMessageDelegate {
  const LogMessageDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.LogMessage?> findUnique({
    required _i3.LogMessageWhereUniqueInput where,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LogMessage?>(
      action: 'findUniqueLogMessage',
      result: result,
      factory: (e) => e != null ? _i2.LogMessage.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.LogMessage> findUniqueOrThrow({
    required _i3.LogMessageWhereUniqueInput where,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LogMessage>(
      action: 'findUniqueLogMessageOrThrow',
      result: result,
      factory: (e) => _i2.LogMessage.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.LogMessage?> findFirst({
    _i3.LogMessageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LogMessageOrderByWithRelationInput>,
            _i3.LogMessageOrderByWithRelationInput>?
        orderBy,
    _i3.LogMessageWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LogMessageScalar, Iterable<_i3.LogMessageScalar>>?
        distinct,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LogMessage?>(
      action: 'findFirstLogMessage',
      result: result,
      factory: (e) => e != null ? _i2.LogMessage.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.LogMessage> findFirstOrThrow({
    _i3.LogMessageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LogMessageOrderByWithRelationInput>,
            _i3.LogMessageOrderByWithRelationInput>?
        orderBy,
    _i3.LogMessageWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LogMessageScalar, Iterable<_i3.LogMessageScalar>>?
        distinct,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LogMessage>(
      action: 'findFirstLogMessageOrThrow',
      result: result,
      factory: (e) => _i2.LogMessage.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.LogMessage>> findMany({
    _i3.LogMessageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LogMessageOrderByWithRelationInput>,
            _i3.LogMessageOrderByWithRelationInput>?
        orderBy,
    _i3.LogMessageWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.LogMessageScalar, Iterable<_i3.LogMessageScalar>>?
        distinct,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.LogMessage>>(
      action: 'findManyLogMessage',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.LogMessage.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.LogMessage> create({
    required _i1.PrismaUnion<_i3.LogMessageCreateInput,
            _i3.LogMessageUncheckedCreateInput>
        data,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LogMessage>(
      action: 'createOneLogMessage',
      result: result,
      factory: (e) => _i2.LogMessage.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.LogMessageCreateManyInput,
              Iterable<_i3.LogMessageCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyLogMessage',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyLogMessageAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.LogMessageCreateManyInput,
            Iterable<_i3.LogMessageCreateManyInput>>
        data,
    _i3.CreateManyLogMessageAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyLogMessageAndReturnOutputType>>(
      action: 'createManyLogMessageAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.CreateManyLogMessageAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.LogMessage?> update({
    required _i1.PrismaUnion<_i3.LogMessageUpdateInput,
            _i3.LogMessageUncheckedUpdateInput>
        data,
    required _i3.LogMessageWhereUniqueInput where,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LogMessage?>(
      action: 'updateOneLogMessage',
      result: result,
      factory: (e) => e != null ? _i2.LogMessage.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.LogMessageUpdateManyMutationInput,
            _i3.LogMessageUncheckedUpdateManyInput>
        data,
    _i3.LogMessageWhereInput? where,
    int? limit,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyLogMessage',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.UpdateManyLogMessageAndReturnOutputType>>
      updateManyAndReturn({
    required _i1.PrismaUnion<_i3.LogMessageUpdateManyMutationInput,
            _i3.LogMessageUncheckedUpdateManyInput>
        data,
    _i3.LogMessageWhereInput? where,
    int? limit,
    _i3.UpdateManyLogMessageAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.updateManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.UpdateManyLogMessageAndReturnOutputType>>(
      action: 'updateManyLogMessageAndReturn',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i2.UpdateManyLogMessageAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.LogMessage> upsert({
    required _i3.LogMessageWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.LogMessageCreateInput,
            _i3.LogMessageUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.LogMessageUpdateInput,
            _i3.LogMessageUncheckedUpdateInput>
        update,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LogMessage>(
      action: 'upsertOneLogMessage',
      result: result,
      factory: (e) => _i2.LogMessage.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.LogMessage?> delete({
    required _i3.LogMessageWhereUniqueInput where,
    _i3.LogMessageSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.LogMessage?>(
      action: 'deleteOneLogMessage',
      result: result,
      factory: (e) => e != null ? _i2.LogMessage.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.LogMessageWhereInput? where,
    int? limit,
  }) {
    final args = {
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyLogMessage',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.LogMessageGroupByOutputType>> groupBy({
    _i3.LogMessageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LogMessageOrderByWithAggregationInput>,
            _i3.LogMessageOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.LogMessageScalar>, _i3.LogMessageScalar>
        by,
    _i3.LogMessageScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.LogMessageGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.LogMessageGroupByOutputType>>(
      action: 'groupByLogMessage',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.LogMessageGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateLogMessage> aggregate({
    _i3.LogMessageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.LogMessageOrderByWithRelationInput>,
            _i3.LogMessageOrderByWithRelationInput>?
        orderBy,
    _i3.LogMessageWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateLogMessageSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'LogMessage',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateLogMessage>(
      action: 'aggregateLogMessage',
      result: result,
      factory: (e) => _i3.AggregateLogMessage.fromJson(e),
    );
  }
}

class StoredSettingsDelegate {
  const StoredSettingsDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.StoredSettings?> findUnique({
    required _i3.StoredSettingsWhereUniqueInput where,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoredSettings?>(
      action: 'findUniqueStoredSettings',
      result: result,
      factory: (e) => e != null ? _i2.StoredSettings.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.StoredSettings> findUniqueOrThrow({
    required _i3.StoredSettingsWhereUniqueInput where,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoredSettings>(
      action: 'findUniqueStoredSettingsOrThrow',
      result: result,
      factory: (e) => _i2.StoredSettings.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.StoredSettings?> findFirst({
    _i3.StoredSettingsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoredSettingsOrderByWithRelationInput>,
            _i3.StoredSettingsOrderByWithRelationInput>?
        orderBy,
    _i3.StoredSettingsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoredSettingsScalar,
            Iterable<_i3.StoredSettingsScalar>>?
        distinct,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoredSettings?>(
      action: 'findFirstStoredSettings',
      result: result,
      factory: (e) => e != null ? _i2.StoredSettings.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.StoredSettings> findFirstOrThrow({
    _i3.StoredSettingsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoredSettingsOrderByWithRelationInput>,
            _i3.StoredSettingsOrderByWithRelationInput>?
        orderBy,
    _i3.StoredSettingsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoredSettingsScalar,
            Iterable<_i3.StoredSettingsScalar>>?
        distinct,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoredSettings>(
      action: 'findFirstStoredSettingsOrThrow',
      result: result,
      factory: (e) => _i2.StoredSettings.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.StoredSettings>> findMany({
    _i3.StoredSettingsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoredSettingsOrderByWithRelationInput>,
            _i3.StoredSettingsOrderByWithRelationInput>?
        orderBy,
    _i3.StoredSettingsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.StoredSettingsScalar,
            Iterable<_i3.StoredSettingsScalar>>?
        distinct,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.StoredSettings>>(
      action: 'findManyStoredSettings',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.StoredSettings.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.StoredSettings> create({
    required _i1.PrismaUnion<_i3.StoredSettingsCreateInput,
            _i3.StoredSettingsUncheckedCreateInput>
        data,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoredSettings>(
      action: 'createOneStoredSettings',
      result: result,
      factory: (e) => _i2.StoredSettings.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany(
      {required _i1.PrismaUnion<_i3.StoredSettingsCreateManyInput,
              Iterable<_i3.StoredSettingsCreateManyInput>>
          data}) {
    final args = {'data': data};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyStoredSettings',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyStoredSettingsAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.StoredSettingsCreateManyInput,
            Iterable<_i3.StoredSettingsCreateManyInput>>
        data,
    _i3.CreateManyStoredSettingsAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyStoredSettingsAndReturnOutputType>>(
      action: 'createManyStoredSettingsAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.CreateManyStoredSettingsAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.StoredSettings?> update({
    required _i1.PrismaUnion<_i3.StoredSettingsUpdateInput,
            _i3.StoredSettingsUncheckedUpdateInput>
        data,
    required _i3.StoredSettingsWhereUniqueInput where,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoredSettings?>(
      action: 'updateOneStoredSettings',
      result: result,
      factory: (e) => e != null ? _i2.StoredSettings.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.StoredSettingsUpdateManyMutationInput,
            _i3.StoredSettingsUncheckedUpdateManyInput>
        data,
    _i3.StoredSettingsWhereInput? where,
    int? limit,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyStoredSettings',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.UpdateManyStoredSettingsAndReturnOutputType>>
      updateManyAndReturn({
    required _i1.PrismaUnion<_i3.StoredSettingsUpdateManyMutationInput,
            _i3.StoredSettingsUncheckedUpdateManyInput>
        data,
    _i3.StoredSettingsWhereInput? where,
    int? limit,
    _i3.UpdateManyStoredSettingsAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'limit': limit,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.updateManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.UpdateManyStoredSettingsAndReturnOutputType>>(
      action: 'updateManyStoredSettingsAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map(
          (e) => _i2.UpdateManyStoredSettingsAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.StoredSettings> upsert({
    required _i3.StoredSettingsWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.StoredSettingsCreateInput,
            _i3.StoredSettingsUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.StoredSettingsUpdateInput,
            _i3.StoredSettingsUncheckedUpdateInput>
        update,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoredSettings>(
      action: 'upsertOneStoredSettings',
      result: result,
      factory: (e) => _i2.StoredSettings.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.StoredSettings?> delete({
    required _i3.StoredSettingsWhereUniqueInput where,
    _i3.StoredSettingsSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.StoredSettings?>(
      action: 'deleteOneStoredSettings',
      result: result,
      factory: (e) => e != null ? _i2.StoredSettings.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany({
    _i3.StoredSettingsWhereInput? where,
    int? limit,
  }) {
    final args = {
      'where': where,
      'limit': limit,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyStoredSettings',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.StoredSettingsGroupByOutputType>> groupBy({
    _i3.StoredSettingsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoredSettingsOrderByWithAggregationInput>,
            _i3.StoredSettingsOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.StoredSettingsScalar>,
            _i3.StoredSettingsScalar>
        by,
    _i3.StoredSettingsScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.StoredSettingsGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.StoredSettingsGroupByOutputType>>(
      action: 'groupByStoredSettings',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.StoredSettingsGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateStoredSettings> aggregate({
    _i3.StoredSettingsWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.StoredSettingsOrderByWithRelationInput>,
            _i3.StoredSettingsOrderByWithRelationInput>?
        orderBy,
    _i3.StoredSettingsWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateStoredSettingsSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'StoredSettings',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateStoredSettings>(
      action: 'aggregateStoredSettings',
      result: result,
      factory: (e) => _i3.AggregateStoredSettings.fromJson(e),
    );
  }
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient({
    super.datasourceUrl,
    super.datasources,
    super.errorFormat,
    super.log,
    _i1.Engine? engine,
  }) : _engine = engine;

  static final datamodel = _i4.DataModel.fromJson({
    'enums': [],
    'models': [
      {
        'name': 'Datapoint_local',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'nativeType': null,
            'default': {
              'name': 'cuid',
              'args': [1],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'time',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': true,
          },
          {
            'name': 'lat',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Decimal',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'long',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Decimal',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'speed',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Decimal',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'heading',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Decimal',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'depth',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Decimal',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'h_accuracy',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Decimal',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'v_accuracy',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Decimal',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'propulsion',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'uploaded',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Int',
            'nativeType': null,
            'default': 0,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'LogMessage',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'nativeType': null,
            'default': {
              'name': 'cuid',
              'args': [1],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'time',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'DateTime',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': true,
          },
          {
            'name': 'message',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'StoredSettings',
        'dbName': null,
        'schema': null,
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'nativeType': null,
            'default': {
              'name': 'cuid',
              'args': [1],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'ownSource',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'nativeType': null,
            'default': true,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'onlineMode',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'nativeType': null,
            'default': true,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'ip',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'lastMode',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'cookie',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'nativeType': null,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
    'indexes': [
      {
        'model': 'Datapoint_local',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'LogMessage',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
      {
        'model': 'StoredSettings',
        'type': 'id',
        'isDefinedOnField': true,
        'fields': [
          {'name': 'id'}
        ],
      },
    ],
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
        engine: $engine,
        datasources: $options.datasources,
        datasourceUrl: $options.datasourceUrl,
        errorFormat: $options.errorFormat,
        log: $options.logEmitter.definition,
      );
      client.$options.logEmitter = $options.logEmitter;
      client._transaction = transaction;

      return client;
    }

    return _transaction = _i1.TransactionClient<PrismaClient>($engine, factory);
  }

  @override
  get $engine => _engine ??= _i5.LibraryEngine(
        schema:
            '// This is your Prisma schema file,\n// learn more about it in the docs: https://pris.ly/d/prisma-schema\n\n// Looking for ways to speed up your queries, or scale easily with your serverless or edge functions?\n// Try Prisma Accelerate: https://pris.ly/cli/accelerate-init\n\ngenerator client {\n  provider   = "dart run orm"\n  output     = "../lib/_generated_prisma_client"\n  engineType = "flutter"\n}\n\ndatasource db {\n  provider = "sqlite"\n  url      = "file:sailBlog.db"\n}\n\nmodel Datapoint_local {\n  id         String   @id @default(cuid())\n  time       DateTime @updatedAt\n  lat        Decimal\n  long       Decimal\n  speed      Decimal?\n  heading    Decimal?\n  depth      Decimal?\n  h_accuracy Decimal?\n  v_accuracy Decimal?\n  propulsion Int\n  uploaded   Int      @default(0) // 0 local, \n  // 1 uploaded,\n  // 2 different data\n}\n\nmodel LogMessage {\n  id      String   @id @default(cuid())\n  time    DateTime @updatedAt\n  message String\n}\n\nmodel StoredSettings {\n  id         String  @id @default(cuid())\n  ownSource  Boolean @default(true)\n  onlineMode Boolean @default(true)\n  ip         String?\n  lastMode   Int\n  cookie     String?\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.url,
            'file:sailBlog.db',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  DatapointLocalDelegate get datapointLocal => DatapointLocalDelegate._(this);

  LogMessageDelegate get logMessage => LogMessageDelegate._(this);

  StoredSettingsDelegate get storedSettings => StoredSettingsDelegate._(this);
}
