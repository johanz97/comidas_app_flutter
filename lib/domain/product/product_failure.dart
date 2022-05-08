import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  factory ProductFailure.serverIsDown() = ServerIsDown;
  factory ProductFailure.unexpected() = Unexpected;
}
