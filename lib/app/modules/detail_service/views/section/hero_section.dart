import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/utils/assets/svg/assets_svg.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Container(
              height: 240.w,
              width: Get.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80')))),
          Padding(
              padding: DefaultPadding.all,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 16, width: 16, child: SvgPicture.asset(jasa)),
                      SizedBox(width: 6.w),
                      Text(
                        'Tambal Ban',
                        style: AppTextTheme.current.title1,
                      ),
                      Spacer(),
                      SizedBox(
                        child: Icon(Icons.star, size: 16, color: Colors.amber),
                      ),
                      SizedBox(width: 6.w),
                      Text(
                        '(4,5)',
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            color: kBlack,
                            fontSize: 13.sp),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.w),
                  Row(
                    children: [
                      SizedBox(
                          height: 16, width: 16, child: SvgPicture.asset(pin)),
                      SizedBox(width: 6.w),
                      Text(
                        '2,5 Km',
                        style: AppTextTheme.current.title1,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.w),
                  Row(
                    children: [
                      SizedBox(
                          height: 16,
                          width: 16,
                          child: SvgPicture.asset(money)),
                      SizedBox(width: 6.w),
                      Text(
                        'Rp. 100.000 - Rp.250.000',
                        style: AppTextTheme.current.title1,
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
