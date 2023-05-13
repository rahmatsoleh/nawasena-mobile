import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/routes/app_pages.dart';

import '../../../../../utils/colors/colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      height: 62.w,
      width: Get.width,
      child: Column(
        children: [
          Divider(
            color: disableColor,
            height: 0,
            thickness: 1.2,
          ),
          Container(
              padding: DefaultPadding.all,
              child: Center(
                  child: Text.rich(TextSpan(
                      text: 'Sudah punya akun?',
                      style: AppTextTheme.current.title1,
                      children: [
                    TextSpan(
                      text: ' Masuk Sekarang!',
                      style: AppTextTheme.current.buttonTextDark,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.offAllNamed(Routes.LOGINS),
                    )
                  ]))))
        ],
      ),
    );
  }
}
