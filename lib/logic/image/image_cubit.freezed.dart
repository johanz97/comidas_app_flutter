// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ImageStateTearOff {
  const _$ImageStateTearOff();

  _Initial call({required double widthImage, required double heightImage}) {
    return _Initial(
      widthImage: widthImage,
      heightImage: heightImage,
    );
  }
}

/// @nodoc
const $ImageState = _$ImageStateTearOff();

/// @nodoc
mixin _$ImageState {
  double get widthImage => throw _privateConstructorUsedError;
  double get heightImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageStateCopyWith<ImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageStateCopyWith<$Res> {
  factory $ImageStateCopyWith(
          ImageState value, $Res Function(ImageState) then) =
      _$ImageStateCopyWithImpl<$Res>;
  $Res call({double widthImage, double heightImage});
}

/// @nodoc
class _$ImageStateCopyWithImpl<$Res> implements $ImageStateCopyWith<$Res> {
  _$ImageStateCopyWithImpl(this._value, this._then);

  final ImageState _value;
  // ignore: unused_field
  final $Res Function(ImageState) _then;

  @override
  $Res call({
    Object? widthImage = freezed,
    Object? heightImage = freezed,
  }) {
    return _then(_value.copyWith(
      widthImage: widthImage == freezed
          ? _value.widthImage
          : widthImage // ignore: cast_nullable_to_non_nullable
              as double,
      heightImage: heightImage == freezed
          ? _value.heightImage
          : heightImage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $ImageStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({double widthImage, double heightImage});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ImageStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? widthImage = freezed,
    Object? heightImage = freezed,
  }) {
    return _then(_Initial(
      widthImage: widthImage == freezed
          ? _value.widthImage
          : widthImage // ignore: cast_nullable_to_non_nullable
              as double,
      heightImage: heightImage == freezed
          ? _value.heightImage
          : heightImage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.widthImage, required this.heightImage});

  @override
  final double widthImage;
  @override
  final double heightImage;

  @override
  String toString() {
    return 'ImageState(widthImage: $widthImage, heightImage: $heightImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.widthImage, widthImage) &&
            const DeepCollectionEquality()
                .equals(other.heightImage, heightImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(widthImage),
      const DeepCollectionEquality().hash(heightImage));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements ImageState {
  const factory _Initial(
      {required double widthImage, required double heightImage}) = _$_Initial;

  @override
  double get widthImage;
  @override
  double get heightImage;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
