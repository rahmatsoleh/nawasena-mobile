import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

import '../../../utils/assets/svg/assets_svg.dart';
import '../controllers/main_pages_controller.dart';

class MainPagesView extends GetView<MainPagesController> {
  const MainPagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainPagesController());
    return GetBuilder<MainPagesController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
            index: controller.indexPages, children: controller.pages),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: primaryColor,
            unselectedItemColor: Colors.grey.shade500,
            selectedLabelStyle:
                GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w400),
            currentIndex: controller.indexPages,
            onTap: controller.changeIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              _itemBar(0, home, 'Beranda'),
              _itemBar(1, jasa, 'Jasa'),
              _itemBar(2, history, 'Riwayat'),
              _itemBar(3, akun, 'Akun'),
            ]),
      );
    });
  }

  _itemBar(int index, String svg, String label) {
    return BottomNavigationBarItem(
        icon: SizedBox(
            height: 24.w,
            width: 24.w,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                svg,
                colorFilter: ColorFilter.mode(
                    controller.indexPages == index
                        ? primaryColor
                        : Colors.grey.shade500,
                    BlendMode.srcIn),
              ),
            )),
        label: label);
  }
}
