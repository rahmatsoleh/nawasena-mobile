import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/modules/home/controllers/home_controller.dart';

import '../../../../utils/colors/colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SliverToBoxAdapter(
      child: Padding(
        padding: DefaultPadding.side,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kategori Jasa',
              style: AppTextTheme.current.title2,
            ),
            SizedBox(height: 12.w),
            GetBuilder<HomeController>(builder: (c) {
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.w),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: primaryColor, width: 0.7),
                                      color: controller.category[index]
                                                  ['status'] ==
                                              false
                                          ? kPrimary3
                                          : primaryColor,
                                      borderRadius: AppRadius.all),
                                  child: Center(
                                      child: Text(
                                    '${controller.category[index]['kategory']}',
                                    style: AppTextTheme.current.textFilter,
                                  )),
                                ),
                              ),
                            );
                          })));
            })
          ],
        ),
      ),
    );
  }
}
