import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      padding: EdgeInsets.only(top: 32),
      height: 320.h,
      width: Get.width * 0.8,
      child: Lottie.network(
          'https://assets7.lottiefiles.com/packages/lf20_nvhJxJ38ZY.json'),
    ));
  }
}
