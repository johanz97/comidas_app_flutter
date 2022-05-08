import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/product/product.dart';
import '../../logic/image/image_cubit.dart';
import '../routes/router.gr.dart';

class PrincipalFood extends StatelessWidget {
  final Product product;
  const PrincipalFood({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageCubit(),
      child: BlocBuilder<ImageCubit, ImageState>(
        builder: (context, state) {
          return SizedBox(
            height: 500.h,
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 320.h,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 60.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 300.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.title,
                              style: TextStyle(
                                fontSize: 35.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              product.subtitle,
                              style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              '\$${product.value}',
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
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
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => context.read<ImageCubit>().setSize(
                        heightImage: state.heightImage == 420.h ? 350.h : 420.h,
                        widthImage: state.widthImage == 420.w ? 350.w : 420.w,
                      ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: state.widthImage,
                      height: state.heightImage,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7, // changes position of shadow
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
