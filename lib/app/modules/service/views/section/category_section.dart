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
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 6.w),
                child: GestureDetector(
                  onTap: () => controller.selectCategory(99, ""),
                  child: Container(
                    height: 30.w,
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                        border: Border.all(color: kPrimary3, width: 0.8),
                        color: controller.selectedCategory == 99
                            ? primaryColor
                            : kPrimary3.withOpacity(0.3),
                        borderRadius: AppRadius.all),
                    child: Center(
                        child: Text(
                      'Semua',
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: controller.selectedCategory == 99
                              ? kWhite
                              : primaryColor,
                          fontSize: 12.sp),
                    )),
                  ),
                ),
              ),
              SizedBox(
                  height: 30.w,
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.category.length,
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 6.w),
                              child: GestureDetector(
                                onTap: () => controller.selectCategory(
                                    index, controller.category[index].id ?? ""),
                                child: Container(
                                  height: 30.w,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.w),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: kPrimary3, width: 0.8),
                                      color:
                                          controller.selectedCategory == index
                                              ? primaryColor
                                              : kPrimary3.withOpacity(0.3),
                                      borderRadius: AppRadius.all),
                                  child: Center(
                                      child: Text(
                                    '${controller.category[index].name}',
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            controller.selectedCategory == index
                                                ? kWhite
                                                : primaryColor,
                                        fontSize: 12.sp),
                                  )),
                                ),
                              ),
                            );
                          }))),
            ],
          ),
        );
      }),
    );
  }
}
