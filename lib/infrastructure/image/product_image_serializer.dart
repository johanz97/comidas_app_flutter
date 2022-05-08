import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/image/product_image.dart';

part 'product_image_serializer.freezed.dart';
part 'product_image_serializer.g.dart';

@freezed
class ProductImageSerializer with _$ProductImageSerializer {
  @JsonSerializable(createToJson: true)
  factory ProductImageSerializer({
    required String id,
    required String url,
  }) = _ProductImageSerializer;

  const ProductImageSerializer._();

  factory ProductImageSerializer.fromJson(Map<String, dynamic> json) =>
      _$ProductImageSerializerFromJson(json);

  ProductImage toDomain() => ProductImage(
        id: id,
        url: url,
      );
}
