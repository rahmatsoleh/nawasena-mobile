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
              _itemBar(
                  SizedBox(
                      height: 24.w,
                      width: 24.w,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: SvgPicture.asset(
                          home,
                          colorFilter: ColorFilter.mode(
                              controller.indexPages == 0
                                  ? primaryColor
                                  : Colors.grey.shade500,
                              BlendMode.srcIn),
                        ),
                      )),
                  'Beranda'),
              _itemBar(
                  SizedBox(
                      height: 24.w,
                      width: 24.w,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: SvgPicture.asset(
                          search,
                          colorFilter: ColorFilter.mode(
                              controller.indexPages == 1
                                  ? primaryColor
                                  : Colors.grey.shade500,
                              BlendMode.srcIn),
                        ),
                      )),
                  'Cari'),
              _itemBar(
                  SizedBox(
                      height: 24.w,
                      width: 24.w,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: SvgPicture.asset(
                          history,
                          colorFilter: ColorFilter.mode(
                              controller.indexPages == 2
                                  ? primaryColor
                                  : Colors.grey.shade500,
                              BlendMode.srcIn),
                        ),
                      )),
                  'Riwayat'),
              _itemBar(
                  SizedBox(
                      height: 24.w,
                      width: 24.w,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: SvgPicture.asset(
                          akun,
                          colorFilter: ColorFilter.mode(
                              controller.indexPages == 3
                                  ? primaryColor
                                  : Colors.grey.shade500,
                              BlendMode.srcIn),
                        ),
                      )),
                  'Akun'),
            ]),
      );
    });
  }

  _itemBar(Widget icon, String label) {
    return BottomNavigationBarItem(icon: icon, label: label);
  }
}
