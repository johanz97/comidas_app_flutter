import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/product/product.dart';
import '../../logic/details/details_cubit.dart';
import '../widgets/button_home.dart';
import '../widgets/details.dart';
import '../widgets/image_detail.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {
              AutoRouter.of(context).pop(context);
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
        body: BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {
            final detailsCubit = context.read<DetailsCubit>();
            return SingleChildScrollView(
              child: Column(
                children: [
                  ImageDetail(
                    product: product,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    width: double.infinity,
                    child: Text(
                      product.place,
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: TextStyle(
                            fontSize: 60.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            _iconButton('+', () {
                              detailsCubit.setProduct(
                                product: product,
                                isAdd: true,
                              );
                              detailsCubit.setTotal(
                                total: state.total + product.value,
                                count: state.count + 1,
                              );
                            }),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                state.count.toString(),
                                style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            _iconButton('-', () {
                              if (state.count > 0) {
                                detailsCubit.setProduct(
                                  product: product,
                                  isAdd: false,
                                );
                                detailsCubit.setTotal(
                                  total: state.total - product.value,
                                  count: state.count - 1,
                                );
                              }
                            }),
                            SizedBox(
                              width: 10.h,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Details(
                    product: product,
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {
            final detailsCubit = context.read<DetailsCubit>();
            return GestureDetector(
              onTap: () {
                if (state.list.isNotEmpty) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      backgroundColor: Colors.transparent,
                      content: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        height: 800.h,
                        width: 500.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 400.h,
                              width: 500.w,
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: state.list.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(state.list[index].title),
                                        Text(
                                          state.list[index].value.toString(),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            ListTile(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Total'),
                                  Text(
                                    state.total.toString(),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ButtonHome(
                                text: 'Pagar',
                                onTap: () {
                                  detailsCubit.clearData();
                                  Navigator.pop(context);
                                },
                                isSelected: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              },
              child: Transform.rotate(
                angle: pi / 4,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: Transform.rotate(
                    angle: pi / -4,
                    child: Stack(
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                          size: 65.sp,
                        ),
                        if (state.count > 0)
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.red,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Text(
                                  state.count.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27.sp,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _iconButton(String text, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.sp,
        height: 40.sp,
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 2.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
