import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 72.w,
        width: Get.width,
        padding: DefaultPadding.all,
        child: AppButton.primary(
          text: 'Pesan Sekarang',
          onPressed: () {},
        ));
  }
}
