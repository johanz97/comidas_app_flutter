// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_serializer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductSerializer _$ProductSerializerFromJson(Map<String, dynamic> json) {
  return _ProductSerializer.fromJson(json);
}

/// @nodoc
class _$ProductSerializerTearOff {
  const _$ProductSerializerTearOff();

  _ProductSerializer call(
      {required String id,
      required String title,
      required String subtitle,
      required List<ProductImageSerializer> images,
      required double value,
      required String place,
      required String description,
      required int time}) {
    return _ProductSerializer(
      id: id,
      title: title,
      subtitle: subtitle,
      images: images,
      value: value,
      place: place,
      description: description,
      time: time,
    );
  }

  ProductSerializer fromJson(Map<String, Object?> json) {
    return ProductSerializer.fromJson(json);
  }
}

/// @nodoc
const $ProductSerializer = _$ProductSerializerTearOff();

/// @nodoc
mixin _$ProductSerializer {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  List<ProductImageSerializer> get images => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSerializerCopyWith<ProductSerializer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSerializerCopyWith<$Res> {
  factory $ProductSerializerCopyWith(
          ProductSerializer value, $Res Function(ProductSerializer) then) =
      _$ProductSerializerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String subtitle,
      List<ProductImageSerializer> images,
      double value,
      String place,
      String description,
      int time});
}

/// @nodoc
class _$ProductSerializerCopyWithImpl<$Res>
    implements $ProductSerializerCopyWith<$Res> {
  _$ProductSerializerCopyWithImpl(this._value, this._then);

  final ProductSerializer _value;
  // ignore: unused_field
  final $Res Function(ProductSerializer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? images = freezed,
    Object? value = freezed,
    Object? place = freezed,
    Object? description = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImageSerializer>,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductSerializerCopyWith<$Res>
    implements $ProductSerializerCopyWith<$Res> {
  factory _$ProductSerializerCopyWith(
          _ProductSerializer value, $Res Function(_ProductSerializer) then) =
      __$ProductSerializerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String subtitle,
      List<ProductImageSerializer> images,
      double value,
      String place,
      String description,
      int time});
}

/// @nodoc
class __$ProductSerializerCopyWithImpl<$Res>
    extends _$ProductSerializerCopyWithImpl<$Res>
    implements _$ProductSerializerCopyWith<$Res> {
  __$ProductSerializerCopyWithImpl(
      _ProductSerializer _value, $Res Function(_ProductSerializer) _then)
      : super(_value, (v) => _then(v as _ProductSerializer));

  @override
  _ProductSerializer get _value => super._value as _ProductSerializer;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? images = freezed,
    Object? value = freezed,
    Object? place = freezed,
    Object? description = freezed,
    Object? time = freezed,
  }) {
    return _then(_ProductSerializer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImageSerializer>,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductSerializer extends _ProductSerializer {
  _$_ProductSerializer(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.images,
      required this.value,
      required this.place,
      required this.description,
      required this.time})
      : super._();

  factory _$_ProductSerializer.fromJson(Map<String, dynamic> json) =>
      _$$_ProductSerializerFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final List<ProductImageSerializer> images;
  @override
  final double value;
  @override
  final String place;
  @override
  final String description;
  @override
  final int time;

  @override
  String toString() {
    return 'ProductSerializer(id: $id, title: $title, subtitle: $subtitle, images: $images, value: $value, place: $place, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductSerializer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.place, place) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(place),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$ProductSerializerCopyWith<_ProductSerializer> get copyWith =>
      __$ProductSerializerCopyWithImpl<_ProductSerializer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductSerializerToJson(this);
  }
}

abstract class _ProductSerializer extends ProductSerializer {
  factory _ProductSerializer(
      {required String id,
      required String title,
      required String subtitle,
      required List<ProductImageSerializer> images,
      required double value,
      required String place,
      required String description,
      required int time}) = _$_ProductSerializer;
  _ProductSerializer._() : super._();

  factory _ProductSerializer.fromJson(Map<String, dynamic> json) =
      _$_ProductSerializer.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  List<ProductImageSerializer> get images;
  @override
  double get value;
  @override
  String get place;
  @override
  String get description;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$ProductSerializerCopyWith<_ProductSerializer> get copyWith =>
      throw _privateConstructorUsedError;
}
