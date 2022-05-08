import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/product/product.dart';
import '../../image/product_image_serializer.dart';

part 'product_serializer.freezed.dart';
part 'product_serializer.g.dart';

@freezed
class ProductSerializer with _$ProductSerializer {
  @JsonSerializable(explicitToJson: true)
  factory ProductSerializer({
    required String id,
    required String title,
    required String subtitle,
    required List<ProductImageSerializer> images,
    required double value,
    required String place,
    required String description,
    required int time,
  }) = _ProductSerializer;

  const ProductSerializer._();

  factory ProductSerializer.fromJson(Map<String, dynamic> json) =>
      _$ProductSerializerFromJson(json);

  Product toDomain() => Product(
        id: id,
        title: title,
        subtitle: subtitle,
        images: images.map((e) => e.toDomain()).toList(),
        value: value,
        place: place,
        description: description,
        time: time,
      );
}
