import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_packages_pack/my_packages.dart';

import '../../../../utils/colors/colors.dart';

class ArticleSection extends StatelessWidget {
  const ArticleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
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
                      children: List.generate(5, (index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 8.w),
                      child: Container(
                          height: 90.w,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: AppRadius.all,
                              border:
                                  Border.all(color: disableColor, width: 1.2))),
                    );
                  })),
                ),
              ],
            )));
  }
}
