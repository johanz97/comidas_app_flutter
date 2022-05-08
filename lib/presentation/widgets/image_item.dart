import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/image/image_cubit.dart';

class ImageItem extends StatelessWidget {
  final String image;
  const ImageItem({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageCubit()
        ..setSize(
          heightImage: 60.h,
          widthImage: 60.w,
        ),
      child: BlocBuilder<ImageCubit, ImageState>(
        builder: (context, state) {
          return GestureDetector(
            onTap: () => context.read<ImageCubit>().setSize(
                  heightImage: state.heightImage == 10.h ? 60.h : 10.h,
                  widthImage: state.widthImage == 10.w ? 60.w : 10.w,
                ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: state.widthImage,
                vertical: state.heightImage,
              ),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 9),
                    spreadRadius: 5,
                    blurRadius: 10, // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
