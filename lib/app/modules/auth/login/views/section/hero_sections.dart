import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      color: primaryColor,
      height: 220.h,
      width: Get.width * 0.8,
      child: Lottie.network(
          'https://assets7.lottiefiles.com/packages/lf20_nvhJxJ38ZY.json'),
    ));
  }
}
