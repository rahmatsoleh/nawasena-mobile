import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
          padding: EdgeInsets.only(bottom: 6.w),
          child: Container(
            height: 90.w,
            padding: MiddlePadding.all,
            decoration: BoxDecoration(
                color: kWhite,
                borderRadius: AppRadius.all,
                border: Border.all(color: disableColor, width: 1.2)),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 74.w,
                    width: 74.w,
                    decoration: BoxDecoration(
                        borderRadius: AppRadius.middleAll,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ali imron',
                              style: AppTextTheme.current.appbarTextLight,
                            ),
                            AppBadges.success(
                              text: 'Ready',
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 6.w),
                      Text(
                        '2,5 Km',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: kGrey1,
                            fontSize: 12.sp),
                      ),
                      SizedBox(height: 14.w),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            '(4,5)',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                color: kBlack,
                                fontSize: 14.sp),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      })),
    );
  }
}
