import 'dart:convert';

import 'package:furniture_store_server_server/src/generated/protocol.dart';
import 'package:serverpod/server.dart';
import 'package:serverpod/serverpod.dart';

class ProductEndpoint extends Endpoint {
  Future<Response> addProduct(
    Session session,
    String body,
  ) async {
    try {
      final product = Product.fromJson(
          jsonDecode(body), Serverpod.instance!.serializationManager);
      await Product.insert(session, product);
      return Response(body: 'Product added', statusCode: 201);
    } catch (e) {
      return Response(body: e.toString(), statusCode: 500);
    }
  }

  Future<String?> getUploadDescription(Session session, String path) async {
    return await session.storage.createDirectFileUploadDescription(
      storageId: 'public',
      path: path,
    );
  }

  Future<void> clearImages(Session session) async {
    await session.db.query('DELETE FROM SERVERPOD_CLOUD_STORAGE;');
  }

  Future<bool?> verifyUpload(Session session, String path) async {
    return await session.storage.verifyDirectFileUpload(
      storageId: 'public',
      path: path,
    );
  }

  Future<Response> getImageURL(Session session, String imagePath) async {
    final exists =
        await session.storage.fileExists(storageId: 'public', path: imagePath);
    if (!exists) return Response(body: 'file not found', statusCode: 404);
    final uri = await session.storage
        .getPublicUrl(storageId: 'public', path: imagePath);
    return Response(body: uri.toString(), statusCode: 200);
  }

  Future<Response> getProduct(Session session, int id) async {
    try {
      final product = await Product.findById(session, id)
          .then((value) => jsonEncode(value?.toJson()));
      return Response(body: product, statusCode: 200);
    } catch (e) {
      return Response(body: e.toString(), statusCode: 500);
    }
  }

  Future<Response> updateProduct(Session session, String body) async {
    try {
      final product = Product.fromJson(
          jsonDecode(body), Serverpod.instance!.serializationManager);
      await Product.update(session, product);
      return Response(body: 'Product updated', statusCode: 200);
    } catch (e) {
      return Response(body: e.toString(), statusCode: 500);
    }
  }

  Future<Response> deleteProduct(Session session, int id) async {
    try {
      await Product.delete(session, where: (product) => product.id.equals(id));
      return Response(body: 'Product deleted', statusCode: 200);
    } catch (e) {
      return Response(body: e.toString(), statusCode: 500);
    }
  }

  Future<Response> getAllProducts(Session session) async {
    try {
      final products = await Product.find(session);
      return Response(
        body: jsonEncode(products.map((e) => e.toJson()).toList()),
        statusCode: 200,
      );
    } catch (e) {
      return Response(body: e.toString(), statusCode: 500);
    }
  }
}
