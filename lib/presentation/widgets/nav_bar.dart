import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 30.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 60.w,
      ),
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: Colors.black87,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 7),
            spreadRadius: 8,
            blurRadius: 6, // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _iconButton(Icons.home_outlined, () {}),
          _iconButton(Icons.account_balance_wallet_outlined, () {}),
          _iconButton(Icons.message_outlined, () {}),
          _iconButton(Icons.person_outline, () {}),
        ],
      ),
    );
  }

  Widget _iconButton(IconData icon, Function() onTap) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        size: 70.sp,
        color: Colors.white,
      ),
    );
  }
}
