import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

class ListServiceSection extends StatelessWidget {
  const ListServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: DefaultPadding.all,
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate(childCount: 10, (_, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 8.w),
          child: Container(
              height: 90.w,
              decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: AppRadius.all,
                  border: Border.all(color: disableColor, width: 1.2))),
        );
      })),
    );
  }
}
