import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../domain/product/i_product_repository.dart';
import '../../domain/product/product.dart';
import '../../domain/product/product_failure.dart';
import 'product/product_serializer.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  @override
  Future<Either<ProductFailure, List<Product>>> getData() async {
    try {
      final data = await rootBundle.loadString('assets/data/data.json');
      final listData = jsonDecode(data) as List;
      final List<Product> productList = listData
          .map(
            (e) => ProductSerializer.fromJson(
              Map<String, dynamic>.from(e as Map<dynamic, dynamic>),
            ).toDomain(),
          )
          .toList();
      return right(productList);
    } catch (e) {
      return left(ProductFailure.unexpected());
    }
  }
}
