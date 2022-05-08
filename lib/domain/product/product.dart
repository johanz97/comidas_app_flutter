import 'package:freezed_annotation/freezed_annotation.dart';

import '../image/product_image.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String title,
    required String subtitle,
    required List<ProductImage> images,
    required double value,
    required String place,
    required String description,
    required int time,
  }) = _Product;
  const Product._();
}
