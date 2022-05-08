import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/product/product.dart';
import 'slider_item.dart';

class FoodSlider extends StatelessWidget {
  final List<Product> products;
  const FoodSlider({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return SliderItem(
            product: products[index],
          );
        },
      ),
    );
  }
}
