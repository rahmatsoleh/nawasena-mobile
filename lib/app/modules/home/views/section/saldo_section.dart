import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/utils/assets/svg/assets_svg.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

class SaldoSection extends StatelessWidget {
  const SaldoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: DefaultPadding.all,
        child: Container(
          height: 80.w,
          width: Get.width,
          padding: DefaultPadding.all,
          decoration:
              BoxDecoration(color: primaryColor, borderRadius: AppRadius.all),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 16.w,
                        child: SvgPicture.asset(
                          wallet,
                          colorFilter:
                              ColorFilter.mode(kWhite, BlendMode.srcIn),
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'Saldo',
                        style: AppTextTheme.current.appbarTextDark,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.w),
                  Text(
                    'Rp. 1.200.000',
                    style: AppTextTheme.current.buttonText,
                  ),
                ],
              ),
              SizedBox(
                height: 32.w,
                child: AppButton.secondary(
                  text: 'Isi Saldo',
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
