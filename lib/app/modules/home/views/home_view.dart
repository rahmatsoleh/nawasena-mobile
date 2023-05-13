import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:nawasena/app/modules/home/views/section/header_section.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

import '../controllers/home_controller.dart';
import 'section/advert_section.dart';
import 'section/article_section.dart';
import 'section/category_section.dart';
import 'section/saldo_section.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: CustomScrollView(
          slivers: [
            HeaderSection(),
            SaldoSection(),
            CategorySection(),
            SliverPadding(padding: EdgeInsets.only(bottom: 8.w)),
            AdvertSection(),
            ArticleSection()
          ],
        ));
  }
}
