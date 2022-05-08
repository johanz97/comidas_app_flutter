import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../domain/product/product_failure.dart';

class FailureState extends StatelessWidget {
  final ProductFailure failure;
  final VoidCallback onTap;
  const FailureState({Key? key, required this.failure, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext buildCenterontext) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            failure.map(
              serverIsDown: (_) => 'assets/animations/500.json',
              unexpected: (_) => 'assets/animations/unexpected.json',
            ),
            repeat: true,
          ),
          Text(
            failure.map(
              serverIsDown: (_) => '¡No tienes conexión a internet!',
              unexpected: (_) => 'Error inesperado',
            ),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 150.h,
          ),
          TextButton(
            onPressed: onTap,
            child: const Text('Recargar'),
          ),
        ],
      ),
    );
  }
}
