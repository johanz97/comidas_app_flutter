import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/product/product.dart';
import '../../logic/details/details_cubit.dart';
import 'image_item.dart';

class ImageDetail extends StatelessWidget {
  final Product product;
  const ImageDetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        final detailsBloc = context.read<DetailsCubit>();
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              width: double.infinity,
              height: 700.h,
              child: PageView.builder(
                itemCount: product.images.length,
                onPageChanged: (page) {
                  detailsBloc.setIndex(index: page);
                },
                itemBuilder: (context, index) {
                  return ImageItem(
                    image: product.images[index].url,
                  );
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              height: 200.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(3, state.index),
              ),
            ),
          ],
        );
      },
    );
  }

  List<Widget> indicators(int imagesLength, int currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: currentIndex == index ? 20 : 11,
        height: 7,
        decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          borderRadius: BorderRadius.circular(10),
        ),
      );
    });
  }
}
