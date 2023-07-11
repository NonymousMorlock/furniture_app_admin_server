/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Response extends _i1.TableRow {
  Response({
    int? id,
    required this.body,
    required this.statusCode,
  }) : super(id);

  factory Response.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Response(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      body: serializationManager.deserialize<String>(jsonSerialization['body']),
      statusCode: serializationManager
          .deserialize<int>(jsonSerialization['statusCode']),
    );
  }

  static final t = ResponseTable();

  String body;

  int statusCode;

  @override
  String get tableName => 'response';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'body': body,
      'statusCode': statusCode,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'body': body,
      'statusCode': statusCode,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'body': body,
      'statusCode': statusCode,
    };
  }

  @override
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'body':
        body = value;
        return;
      case 'statusCode':
        statusCode = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Response>> find(
    _i1.Session session, {
    ResponseExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Response>(
      where: where != null ? where(Response.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Response?> findSingleRow(
    _i1.Session session, {
    ResponseExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Response>(
      where: where != null ? where(Response.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Response?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Response>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ResponseExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Response>(
      where: where(Response.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Response row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Response row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Response row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ResponseExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Response>(
      where: where != null ? where(Response.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ResponseExpressionBuilder = _i1.Expression Function(ResponseTable);

class ResponseTable extends _i1.Table {
  ResponseTable() : super(tableName: 'response');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final body = _i1.ColumnString('body');

  final statusCode = _i1.ColumnInt('statusCode');

  @override
  List<_i1.Column> get columns => [
        id,
        body,
        statusCode,
      ];
}

@Deprecated('Use ResponseTable.t instead.')
ResponseTable tResponse = ResponseTable();
