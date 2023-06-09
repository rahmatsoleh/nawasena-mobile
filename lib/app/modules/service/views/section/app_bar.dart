import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';
import 'package:nawasena/app/modules/service/controllers/service_controller.dart';
import 'package:nawasena/app/utils/assets/svg/assets_svg.dart';

import 'category_section.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});
  OutlineInputBorder get _borderStyle => OutlineInputBorder(
        borderRadius: AppRadius.all,
        borderSide: BorderSide(color: kGrey2, width: 1.w),
      );

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: kWhite,
        elevation: 1,
        pinned: true,
        toolbarHeight: 110.w,
        title: Column(
          children: [
            GetBuilder<ServiceController>(builder: (context) {
              return SizedBox(
                height: 38.w,
                child: TextFormField(
                  cursorColor: kPrimary1,
                  onSaved: null,
                  onChanged: (value) => context.searchProvider(value),
                  style: AppTextTheme.current.textForm,
                  decoration: InputDecoration(
                      isDense: true,
                      filled: true,
                      fillColor: kWhite,
                      hintText: 'Cari jasa',
                      hintStyle: AppTextTheme.current.hintForm,
                      errorStyle: AppTextTheme.current.errorText,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 12.w),
                      border: _borderStyle,
                      enabledBorder: _borderStyle,
                      focusedBorder: _borderStyle,
                      disabledBorder: _borderStyle,
                      focusedErrorBorder: _borderStyle,
                      prefixIcon: Container(
                          height: 8.w,
                          width: 8.w,
                          padding: EdgeInsets.all(11),
                          child: SvgPicture.asset(search))),
                ),
              );
            }),
            CategorySection()
          ],
        ));
  }
}
