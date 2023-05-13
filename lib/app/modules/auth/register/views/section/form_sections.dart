import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/modules/auth/logins/controllers/logins_controller.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginsController());
    return SliverToBoxAdapter(
        child: Column(
      children: [
        AppForm(
          controller: controller.emailC,
          labelText: '',
          hintText: 'Masukkan nama lengkap',
        ),
        AppForm(
          controller: controller.emailC,
          labelText: '',
          hintText: 'Masukkan email',
        ),
        AppForm(
          controller: controller.emailC,
          labelText: '',
          hintText: 'Masukkan No handphone',
        ),
        AppForm.password(
          controller: controller.passC,
          labelText: '',
          hintText: 'Masukkan password',
        ),
        AppForm.password(
          controller: controller.passC,
          labelText: '',
          hintText: 'Konfirmasi password',
        ),
        SizedBox(height: 28.w),
        AppButton.primary(
          text: 'Daftar',
          onPressed: () {},
        )
      ],
    ));
  }
}
