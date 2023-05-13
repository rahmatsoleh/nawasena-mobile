import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/modules/service/controllers/service_controller.dart';

import '../../../../utils/colors/colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ServiceController());
    return Padding(
      padding: DefaultPadding.up,
      child: GetBuilder<ServiceController>(builder: (c) {
        return SizedBox(
            height: 26.w,
            child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    itemCount: controller.category.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 6.w),
                        child: GestureDetector(
                          onTap: () => controller.selectCategory(index),
                          child: Container(
                            height: 26.w,
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: primaryColor, width: 0.8),
                                color: controller.category[index]['status'] ==
                                        false
                                    ? kPrimary3.withOpacity(0.7)
                                    : primaryColor,
                                borderRadius: AppRadius.all),
                            child: Center(
                                child: Text(
                              '${controller.category[index]['kategory']}',
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  color: controller.category[index]['status'] ==
                                          false
                                      ? primaryColor
                                      : kWhite,
                                  fontSize: 12.sp),
                            )),
                          ),
                        ),
                      );
                    })));
      }),
    );
  }
}
