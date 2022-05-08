// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_image_serializer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductImageSerializer _$ProductImageSerializerFromJson(
    Map<String, dynamic> json) {
  return _ProductImageSerializer.fromJson(json);
}

/// @nodoc
class _$ProductImageSerializerTearOff {
  const _$ProductImageSerializerTearOff();

  _ProductImageSerializer call({required String id, required String url}) {
    return _ProductImageSerializer(
      id: id,
      url: url,
    );
  }

  ProductImageSerializer fromJson(Map<String, Object?> json) {
    return ProductImageSerializer.fromJson(json);
  }
}

/// @nodoc
const $ProductImageSerializer = _$ProductImageSerializerTearOff();

/// @nodoc
mixin _$ProductImageSerializer {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductImageSerializerCopyWith<ProductImageSerializer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageSerializerCopyWith<$Res> {
  factory $ProductImageSerializerCopyWith(ProductImageSerializer value,
          $Res Function(ProductImageSerializer) then) =
      _$ProductImageSerializerCopyWithImpl<$Res>;
  $Res call({String id, String url});
}

/// @nodoc
class _$ProductImageSerializerCopyWithImpl<$Res>
    implements $ProductImageSerializerCopyWith<$Res> {
  _$ProductImageSerializerCopyWithImpl(this._value, this._then);

  final ProductImageSerializer _value;
  // ignore: unused_field
  final $Res Function(ProductImageSerializer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductImageSerializerCopyWith<$Res>
    implements $ProductImageSerializerCopyWith<$Res> {
  factory _$ProductImageSerializerCopyWith(_ProductImageSerializer value,
          $Res Function(_ProductImageSerializer) then) =
      __$ProductImageSerializerCopyWithImpl<$Res>;
  @override
  $Res call({String id, String url});
}

/// @nodoc
class __$ProductImageSerializerCopyWithImpl<$Res>
    extends _$ProductImageSerializerCopyWithImpl<$Res>
    implements _$ProductImageSerializerCopyWith<$Res> {
  __$ProductImageSerializerCopyWithImpl(_ProductImageSerializer _value,
      $Res Function(_ProductImageSerializer) _then)
      : super(_value, (v) => _then(v as _ProductImageSerializer));

  @override
  _ProductImageSerializer get _value => super._value as _ProductImageSerializer;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_ProductImageSerializer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: true)
class _$_ProductImageSerializer extends _ProductImageSerializer {
  _$_ProductImageSerializer({required this.id, required this.url}) : super._();

  factory _$_ProductImageSerializer.fromJson(Map<String, dynamic> json) =>
      _$$_ProductImageSerializerFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'ProductImageSerializer(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductImageSerializer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$ProductImageSerializerCopyWith<_ProductImageSerializer> get copyWith =>
      __$ProductImageSerializerCopyWithImpl<_ProductImageSerializer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductImageSerializerToJson(this);
  }
}

abstract class _ProductImageSerializer extends ProductImageSerializer {
  factory _ProductImageSerializer({required String id, required String url}) =
      _$_ProductImageSerializer;
  _ProductImageSerializer._() : super._();

  factory _ProductImageSerializer.fromJson(Map<String, dynamic> json) =
      _$_ProductImageSerializer.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$ProductImageSerializerCopyWith<_ProductImageSerializer> get copyWith =>
      throw _privateConstructorUsedError;
}
