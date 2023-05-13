import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/utils/assets/images/assets_images.dart';

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
                height: 220.h,
                width: 320.w,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(logo))),
              )),
            ),
          );
        });
  }
}
