/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

class Product extends _i1.TableRow {
  Product({
    int? id,
    required this.name,
    this.sku,
    required this.availability,
    required this.quantity,
    required this.categories,
    required this.description,
    required this.images,
    required this.weight,
    required this.weightUnit,
    this.dimensions,
    required this.price,
    this.compareAtPrice,
    required this.createdAt,
    required this.updatedAt,
    required this.availableAt,
  }) : super(id);

  factory Product.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Product(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      sku: serializationManager.deserialize<String?>(jsonSerialization['sku']),
      availability: serializationManager
          .deserialize<String>(jsonSerialization['availability']),
      quantity:
          serializationManager.deserialize<int>(jsonSerialization['quantity']),
      categories: serializationManager
          .deserialize<List<String>>(jsonSerialization['categories']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      images: serializationManager
          .deserialize<List<String>>(jsonSerialization['images']),
      weight:
          serializationManager.deserialize<double>(jsonSerialization['weight']),
      weightUnit: serializationManager
          .deserialize<String>(jsonSerialization['weightUnit']),
      dimensions: serializationManager
          .deserialize<String?>(jsonSerialization['dimensions']),
      price:
          serializationManager.deserialize<double>(jsonSerialization['price']),
      compareAtPrice: serializationManager
          .deserialize<double?>(jsonSerialization['compareAtPrice']),
      createdAt: serializationManager
          .deserialize<String>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<String>(jsonSerialization['updatedAt']),
      availableAt: serializationManager
          .deserialize<String>(jsonSerialization['availableAt']),
    );
  }

  static final t = ProductTable();

  String name;

  String? sku;

  String availability;

  int quantity;

  List<String> categories;

  String description;

  List<String> images;

  double weight;

  String weightUnit;

  String? dimensions;

  double price;

  double? compareAtPrice;

  String createdAt;

  String updatedAt;

  String availableAt;

  @override
  String get tableName => 'product';
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'sku': sku,
      'availability': availability,
      'quantity': quantity,
      'categories': categories,
      'description': description,
      'images': images,
      'weight': weight,
      'weightUnit': weightUnit,
      'dimensions': dimensions,
      'price': price,
      'compareAtPrice': compareAtPrice,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'availableAt': availableAt,
    };
  }

  @override
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'sku': sku,
      'availability': availability,
      'quantity': quantity,
      'categories': categories,
      'description': description,
      'images': images,
      'weight': weight,
      'weightUnit': weightUnit,
      'dimensions': dimensions,
      'price': price,
      'compareAtPrice': compareAtPrice,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'availableAt': availableAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'name': name,
      'sku': sku,
      'availability': availability,
      'quantity': quantity,
      'categories': categories,
      'description': description,
      'images': images,
      'weight': weight,
      'weightUnit': weightUnit,
      'dimensions': dimensions,
      'price': price,
      'compareAtPrice': compareAtPrice,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'availableAt': availableAt,
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
      case 'name':
        name = value;
        return;
      case 'sku':
        sku = value;
        return;
      case 'availability':
        availability = value;
        return;
      case 'quantity':
        quantity = value;
        return;
      case 'categories':
        categories = value;
        return;
      case 'description':
        description = value;
        return;
      case 'images':
        images = value;
        return;
      case 'weight':
        weight = value;
        return;
      case 'weightUnit':
        weightUnit = value;
        return;
      case 'dimensions':
        dimensions = value;
        return;
      case 'price':
        price = value;
        return;
      case 'compareAtPrice':
        compareAtPrice = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'updatedAt':
        updatedAt = value;
        return;
      case 'availableAt':
        availableAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Product>> find(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Product?> findSingleRow(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Product>(
      where: where != null ? where(Product.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Product?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Product>(id);
  }

  static Future<int> delete(
    _i1.Session session, {
    required ProductExpressionBuilder where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  static Future<int> count(
    _i1.Session session, {
    ProductExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef ProductExpressionBuilder = _i1.Expression Function(ProductTable);

class ProductTable extends _i1.Table {
  ProductTable() : super(tableName: 'product');

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  final id = _i1.ColumnInt('id');

  final name = _i1.ColumnString('name');

  final sku = _i1.ColumnString('sku');

  final availability = _i1.ColumnString('availability');

  final quantity = _i1.ColumnInt('quantity');

  final categories = _i1.ColumnSerializable('categories');

  final description = _i1.ColumnString('description');

  final images = _i1.ColumnSerializable('images');

  final weight = _i1.ColumnDouble('weight');

  final weightUnit = _i1.ColumnString('weightUnit');

  final dimensions = _i1.ColumnString('dimensions');

  final price = _i1.ColumnDouble('price');

  final compareAtPrice = _i1.ColumnDouble('compareAtPrice');

  final createdAt = _i1.ColumnString('createdAt');

  final updatedAt = _i1.ColumnString('updatedAt');

  final availableAt = _i1.ColumnString('availableAt');

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        sku,
        availability,
        quantity,
        categories,
        description,
        images,
        weight,
        weightUnit,
        dimensions,
        price,
        compareAtPrice,
        createdAt,
        updatedAt,
        availableAt,
      ];
}

@Deprecated('Use ProductTable.t instead.')
ProductTable tProduct = ProductTable();
