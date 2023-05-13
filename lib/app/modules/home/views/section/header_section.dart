import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/utils/assets/svg/assets_svg.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kWhite,
      pinned: true,
      title: Row(
        children: [
          Text.rich(TextSpan(
              text: 'Hi,',
              style: AppTextTheme.current.title2,
              children: [
                TextSpan(
                  text: ' Ali imron',
                  style: AppTextTheme.current.title1,
                )
              ])),
          SizedBox(width: 2.w),
          SizedBox(
            height: 18.w,
            width: 18.w,
            child: Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_dpohsucu.json'),
          )
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16.w),
          child: Container(
            height: 18.w,
            width: 18.w,
            child: SvgPicture.asset(bell),
          ),
        )
      ],
    );
  }
}
