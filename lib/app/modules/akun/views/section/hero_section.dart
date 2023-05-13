import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_packages_pack/my_packages.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: [
        Container(
          height: 102.w,
          width: 102.w,
          decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimary3),
        ),
        SizedBox(height: 12.w),
        Text(
          'Ali Imron',
          style: AppTextTheme.current.appbarTextLight,
        ),
        SizedBox(height: 4.w),
        Text(
          'aliimron@gmail.com',
          style: AppTextTheme.current.labelForm,
        ),
      ],
    ));
  }
}
