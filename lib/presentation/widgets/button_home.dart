import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonHome extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function() onTap;
  const ButtonHome({
    Key? key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.w,
          vertical: 25.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: isSelected ? Colors.black : Colors.grey[200],
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 30.sp,
          ),
        ),
      ),
    );
  }
}
