// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/dmmf.dart' as _i4;
import 'package:orm/engines/binary.dart' as _i5;
import 'package:orm/orm.dart' as _i1;

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

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.DatapointLocalCreateManyInput,
            Iterable<_i3.DatapointLocalCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
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
    bool? skipDuplicates,
    _i3.CreateManyDatapointLocalAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
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
  }) {
    final args = {
      'data': data,
      'where': where,
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

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.DatapointLocalWhereInput? where}) {
    final args = {'where': where};
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

class DatapointUploadedDelegate {
  const DatapointUploadedDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.DatapointUploaded?> findUnique({
    required _i3.DatapointUploadedWhereUniqueInput where,
    _i3.DatapointUploadedSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointUploaded?>(
      action: 'findUniqueDatapoint_uploaded',
      result: result,
      factory: (e) => e != null ? _i2.DatapointUploaded.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.DatapointUploaded> findUniqueOrThrow({
    required _i3.DatapointUploadedWhereUniqueInput where,
    _i3.DatapointUploadedSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointUploaded>(
      action: 'findUniqueDatapoint_uploadedOrThrow',
      result: result,
      factory: (e) => _i2.DatapointUploaded.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DatapointUploaded?> findFirst({
    _i3.DatapointUploadedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointUploadedOrderByWithRelationInput>,
            _i3.DatapointUploadedOrderByWithRelationInput>?
        orderBy,
    _i3.DatapointUploadedWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DatapointUploadedScalar,
            Iterable<_i3.DatapointUploadedScalar>>?
        distinct,
    _i3.DatapointUploadedSelect? select,
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
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointUploaded?>(
      action: 'findFirstDatapoint_uploaded',
      result: result,
      factory: (e) => e != null ? _i2.DatapointUploaded.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.DatapointUploaded> findFirstOrThrow({
    _i3.DatapointUploadedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointUploadedOrderByWithRelationInput>,
            _i3.DatapointUploadedOrderByWithRelationInput>?
        orderBy,
    _i3.DatapointUploadedWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DatapointUploadedScalar,
            Iterable<_i3.DatapointUploadedScalar>>?
        distinct,
    _i3.DatapointUploadedSelect? select,
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
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointUploaded>(
      action: 'findFirstDatapoint_uploadedOrThrow',
      result: result,
      factory: (e) => _i2.DatapointUploaded.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.DatapointUploaded>> findMany({
    _i3.DatapointUploadedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointUploadedOrderByWithRelationInput>,
            _i3.DatapointUploadedOrderByWithRelationInput>?
        orderBy,
    _i3.DatapointUploadedWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.DatapointUploadedScalar,
            Iterable<_i3.DatapointUploadedScalar>>?
        distinct,
    _i3.DatapointUploadedSelect? select,
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
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.DatapointUploaded>>(
      action: 'findManyDatapoint_uploaded',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.DatapointUploaded.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.DatapointUploaded> create({
    required _i1.PrismaUnion<_i3.DatapointUploadedCreateInput,
            _i3.DatapointUploadedUncheckedCreateInput>
        data,
    _i3.DatapointUploadedSelect? select,
  }) {
    final args = {
      'data': data,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointUploaded>(
      action: 'createOneDatapoint_uploaded',
      result: result,
      factory: (e) => _i2.DatapointUploaded.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.DatapointUploadedCreateManyInput,
            Iterable<_i3.DatapointUploadedCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyDatapoint_uploaded',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CreateManyDatapointUploadedAndReturnOutputType>>
      createManyAndReturn({
    required _i1.PrismaUnion<_i3.DatapointUploadedCreateManyInput,
            Iterable<_i3.DatapointUploadedCreateManyInput>>
        data,
    bool? skipDuplicates,
    _i3.CreateManyDatapointUploadedAndReturnOutputTypeSelect? select,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.createManyAndReturn,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<
        Iterable<_i2.CreateManyDatapointUploadedAndReturnOutputType>>(
      action: 'createManyDatapoint_uploadedAndReturn',
      result: result,
      factory: (values) => (values as Iterable).map((e) =>
          _i2.CreateManyDatapointUploadedAndReturnOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.DatapointUploaded?> update({
    required _i1.PrismaUnion<_i3.DatapointUploadedUpdateInput,
            _i3.DatapointUploadedUncheckedUpdateInput>
        data,
    required _i3.DatapointUploadedWhereUniqueInput where,
    _i3.DatapointUploadedSelect? select,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointUploaded?>(
      action: 'updateOneDatapoint_uploaded',
      result: result,
      factory: (e) => e != null ? _i2.DatapointUploaded.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.DatapointUploadedUpdateManyMutationInput,
            _i3.DatapointUploadedUncheckedUpdateManyInput>
        data,
    _i3.DatapointUploadedWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyDatapoint_uploaded',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DatapointUploaded> upsert({
    required _i3.DatapointUploadedWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.DatapointUploadedCreateInput,
            _i3.DatapointUploadedUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.DatapointUploadedUpdateInput,
            _i3.DatapointUploadedUncheckedUpdateInput>
        update,
    _i3.DatapointUploadedSelect? select,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointUploaded>(
      action: 'upsertOneDatapoint_uploaded',
      result: result,
      factory: (e) => _i2.DatapointUploaded.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.DatapointUploaded?> delete({
    required _i3.DatapointUploadedWhereUniqueInput where,
    _i3.DatapointUploadedSelect? select,
  }) {
    final args = {
      'where': where,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.DatapointUploaded?>(
      action: 'deleteOneDatapoint_uploaded',
      result: result,
      factory: (e) => e != null ? _i2.DatapointUploaded.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.DatapointUploadedWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyDatapoint_uploaded',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.DatapointUploadedGroupByOutputType>> groupBy({
    _i3.DatapointUploadedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointUploadedOrderByWithAggregationInput>,
            _i3.DatapointUploadedOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.DatapointUploadedScalar>,
            _i3.DatapointUploadedScalar>
        by,
    _i3.DatapointUploadedScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.DatapointUploadedGroupByOutputTypeSelect? select,
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
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.DatapointUploadedGroupByOutputType>>(
      action: 'groupByDatapoint_uploaded',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.DatapointUploadedGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateDatapointUploaded> aggregate({
    _i3.DatapointUploadedWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.DatapointUploadedOrderByWithRelationInput>,
            _i3.DatapointUploadedOrderByWithRelationInput>?
        orderBy,
    _i3.DatapointUploadedWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateDatapointUploadedSelect? select,
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
      modelName: 'Datapoint_uploaded',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client.$engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateDatapointUploaded>(
      action: 'aggregateDatapoint_uploaded',
      result: result,
      factory: (e) => _i3.AggregateDatapointUploaded.fromJson(e),
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
            'default': {
              'name': 'cuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
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
        'name': 'Datapoint_uploaded',
        'dbName': null,
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
            'default': {
              'name': 'cuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
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
  });

  _i1.Engine? _engine;

  _i1.TransactionClient<PrismaClient>? _transaction;

  @override
  get $transaction {
    if (_transaction != null) return _transaction!;
    PrismaClient factory(_i1.TransactionClient<PrismaClient> transaction) {
      final client = PrismaClient(
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
  get $engine => _engine ??= _i5.BinaryEngine(
        schema:
            '// This is your Prisma schema file,\n// learn more about it in the docs: https://pris.ly/d/prisma-schema\n\n// Looking for ways to speed up your queries, or scale easily with your serverless or edge functions?\n// Try Prisma Accelerate: https://pris.ly/cli/accelerate-init\n\ngenerator client {\n  provider = "dart run orm"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("DATABASE_URL")\n}\n\nmodel Datapoint_local {\n  id         String   @id @default(cuid())\n  lat        Decimal\n  long       Decimal\n  speed      Decimal?\n  heading    Decimal?\n  depth      Decimal?\n  h_accuracy Decimal?\n  v_accuracy Decimal?\n}\n\nmodel Datapoint_uploaded {\n  id         String   @id @default(cuid())\n  lat        Decimal\n  long       Decimal\n  speed      Decimal?\n  heading    Decimal?\n  depth      Decimal?\n  h_accuracy Decimal?\n  v_accuracy Decimal?\n}\n',
        datasources: const {
          'db': _i1.Datasource(
            _i1.DatasourceType.environment,
            'DATABASE_URL',
          )
        },
        options: $options,
      );

  @override
  get $datamodel => datamodel;

  DatapointLocalDelegate get datapointLocal => DatapointLocalDelegate._(this);

  DatapointUploadedDelegate get datapointUploaded =>
      DatapointUploadedDelegate._(this);
}
