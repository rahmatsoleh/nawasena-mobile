import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_packages_pack/my_packages.dart';

class AppDialogs extends StatelessWidget {
  const AppDialogs({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(vertical: 250.w, horizontal: 16.w),
      child: Container(
          padding: DefaultPadding.all,
          decoration: BoxDecoration(borderRadius: AppRadius.all, color: kWhite),
          child: Material(color: Colors.transparent, child: child)),
    );
  }
}
