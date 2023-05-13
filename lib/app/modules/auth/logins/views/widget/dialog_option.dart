import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/routes/app_pages.dart';

class DialogOption extends StatelessWidget {
  const DialogOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            child: Lottie.network(
                'https://assets10.lottiefiles.com/private_files/lf30_vf2aaeub.json')),
        SizedBox(height: 26.w),
        AppButton.primary(
            text: 'Daftar sebagai penyedia jasa',
            onPressed: () {
              Get.back();
              Get.toNamed(Routes.REGISTER, arguments: "service");
            }),
        SizedBox(height: 16.w),
        AppButton.primary(
            text: 'Daftar sebagai pengguna',
            onPressed: () {
              Get.back();
              Get.toNamed(Routes.REGISTER, arguments: "service");
            }),
      ],
    );
  }
}
