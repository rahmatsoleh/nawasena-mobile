import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';

import '../../../../../components/dialog/app_dialog.dart';
import '../../../../../utils/colors/colors.dart';
import '../widget/dialog_option.dart';

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
                      text: 'Belum punya akun?',
                      style: AppTextTheme.current.title1,
                      children: [
                    TextSpan(
                      text: ' Daftar Sekarang!',
                      style: AppTextTheme.current.buttonTextDark,
                      recognizer: TapGestureRecognizer()
                        ..onTap =
                            () => Get.dialog(AppDialogs(child: DialogOption())),
                    )
                  ]))))
        ],
      ),
    );
  }
}
