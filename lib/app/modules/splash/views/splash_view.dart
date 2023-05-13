import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:my_packages_pack/my_packages.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: controller.login(),
        builder: (context, snap) {
          return Material(
            child: Container(
              height: ScreenUtil().screenHeight,
              width: ScreenUtil().screenWidth,
              color: kWhite,
              child: Center(
                  child: Container(
                height: 120.h,
                width: 220.w,
                child: Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_nvhJxJ38ZY.json'),
              )),
            ),
          );
        });
  }
}
