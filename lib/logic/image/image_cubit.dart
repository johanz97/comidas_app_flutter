import 'package:bloc/bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_state.dart';
part 'image_cubit.freezed.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageState.initial());

  Future<void> setSize({
    required double heightImage,
    required double widthImage,
  }) async {
    emit(
      state.copyWith(
        heightImage: heightImage,
        widthImage: widthImage,
      ),
    );
  }
}
