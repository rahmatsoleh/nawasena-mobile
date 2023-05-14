import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/modules/home/controllers/home_controller.dart';

import '../../../../utils/colors/colors.dart';

class ArticleSection extends StatelessWidget {
  const ArticleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SliverToBoxAdapter(
        child: GetBuilder<HomeController>(builder: (context) {
      return Padding(
          padding: DefaultPadding.all,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Artikel',
                    style: AppTextTheme.current.title2,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Lihat semua',
                      style: AppTextTheme.current.buttonTextDark,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.w),
              SizedBox(
                child: Column(
                    children: List.generate(controller.news.length, (index) {
                  final news = controller.news[index];
                  if (index == 5 && index == 52 && index == 98) {
                    return SizedBox();
                  } else {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.w),
                      child: Container(
                          height: 90.w,
                          padding: MiddlePadding.all,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: AppRadius.all,
                              border:
                                  Border.all(color: disableColor, width: 1.2)),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: AppRadius.all,
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://images.unsplash.com/photo-1682687982502-1529b3b33f85?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(width: 6.w),
                              SizedBox(
                                  width: Get.width * 0.6,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('${news.category?.capitalizeFirst}',
                                          style: AppTextTheme.current.title2),
                                      SizedBox(height: 2.w),
                                      SizedBox(
                                        width: Get.width * 0.6,
                                        child: Text('${news.description}',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: AppTextTheme.current.title1),
                                      ),
                                      SizedBox(height: 6.w),
                                      Text('27-05-2023',
                                          style: AppTextTheme.current.hintForm),
                                    ],
                                  ))
                            ],
                          )),
                    );
                  }
                })),
              ),
            ],
          ));
    }));
  }
}
