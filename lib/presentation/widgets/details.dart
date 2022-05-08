import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/product/product.dart';
import '../../logic/details/details_cubit.dart';

class Details extends StatelessWidget {
  final Product product;
  const Details({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            children: [
              Text(
                product.description,
                style: TextStyle(
                  fontSize: 30.sp,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                ),
                child: Row(
                  children: [
                    Text(
                      'Delivery Time',
                      style: TextStyle(
                        fontSize: 30.sp,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 30.w,
                        right: 15.w,
                      ),
                      child: const Icon(
                        Icons.access_time_rounded,
                      ),
                    ),
                    Text(
                      '${product.time} Mins',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Total Price',
                  style: TextStyle(
                    fontSize: 30.sp,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                ),
                width: double.infinity,
                child: Text(
                  '\$${state.total}',
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
