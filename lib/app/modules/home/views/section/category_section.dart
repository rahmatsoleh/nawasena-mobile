import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_packages_pack/my_packages.dart';

import '../../../../utils/colors/colors.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
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
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 32.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 0.7),
                      color: kPrimary3,
                      borderRadius: AppRadius.all),
                )),
                SizedBox(width: 8.w),
                Expanded(
                    child: Container(
                  height: 32.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 0.7),
                      color: kPrimary3,
                      borderRadius: AppRadius.all),
                )),
                SizedBox(width: 8.w),
                Expanded(
                    child: Container(
                  height: 32.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 0.7),
                      color: kPrimary3,
                      borderRadius: AppRadius.all),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
