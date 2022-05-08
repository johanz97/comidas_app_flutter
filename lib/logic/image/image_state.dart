part of 'image_cubit.dart';

@freezed
class ImageState with _$ImageState {
  const factory ImageState({
    required double widthImage,
    required double heightImage,
  }) = _Initial;
  factory ImageState.initial() => ImageState(
        widthImage: 350.w,
        heightImage: 350.h,
      );
}
