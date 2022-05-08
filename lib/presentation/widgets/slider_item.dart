import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/product/product.dart';
import '../../logic/image/image_cubit.dart';
import '../routes/router.gr.dart';

class SliderItem extends StatelessWidget {
  final Product product;
  const SliderItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageCubit()
        ..setSize(
          heightImage: 280.h,
          widthImage: 280.w,
        ),
      child: BlocBuilder<ImageCubit, ImageState>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 16,
            ),
            width: 380.w,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Container(
                    width: 270.w,
                    margin: const EdgeInsets.only(bottom: 2),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Colors.grey[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 260.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.title,
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              product.subtitle,
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              '\$${product.value}',
                              style: TextStyle(
                                fontSize: 35.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 70.h,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -13,
                  left: 140.w,
                  child: IconButton(
                    onPressed: () {
                      context.router.push(
                        DetailRoute(
                          product: product,
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.add_circle,
                      size: 70.sp,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => context.read<ImageCubit>().setSize(
                        heightImage: state.heightImage == 280.h ? 400.h : 280.h,
                        widthImage: state.widthImage == 280.w ? 400.w : 280.w,
                      ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 10.h,
                      ),
                      width: state.widthImage,
                      height: state.heightImage,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                              0,
                              6,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage(product.images.first.url),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
