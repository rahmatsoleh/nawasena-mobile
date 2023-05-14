import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoadingOnLoad extends StatelessWidget {
  const LoadingOnLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.5,
      width: Get.width,
      child: Center(
          child: SizedBox(
        height: 100.w,
        width: Get.width,
        child: Lottie.network(
            'https://assets1.lottiefiles.com/packages/lf20_p8bfn5to.json'),
      )),
    );
  }
}
