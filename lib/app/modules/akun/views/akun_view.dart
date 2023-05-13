import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

import '../controllers/akun_controller.dart';
import 'section/hero_section.dart';

class AkunView extends GetView<AkunController> {
  const AkunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Padding(
          padding: DefaultPadding.all,
          child: CustomScrollView(
            slivers: [
              SliverPadding(padding: EdgeInsets.symmetric(vertical: 32.w)),
              HeroSection()
            ],
          ),
        ));
  }
}
