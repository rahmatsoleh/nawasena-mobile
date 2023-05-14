import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';

import '../../controllers/akun_controller.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AkunController());
    return SliverToBoxAdapter(
        child: GetBuilder<AkunController>(builder: (context) {
      return Column(
        children: [
          Container(
            height: 102.w,
            width: 102.w,
            decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimary3),
          ),
          SizedBox(height: 12.w),
          Text(
            '${controller.user.name ?? "Test Almanac 1"}',
            style: AppTextTheme.current.appbarTextLight,
          ),
          SizedBox(height: 4.w),
          Text(
            '${controller.user.name ?? "test@gmail.com"}',
            style: AppTextTheme.current.labelForm,
          ),
          SizedBox(height: 320),
          AppButton.primary(
            text: 'Logout',
            onPressed: () => controller.logout(),
          )
        ],
      );
    }));
  }
}
