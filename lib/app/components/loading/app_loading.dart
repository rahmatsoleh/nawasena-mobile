import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    Key? key,
    required this.isLoading,
    this.child,
  }) : super(key: key);

  final bool isLoading;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: child ?? const SizedBox.shrink(),
        ),
        if (isLoading)
          Positioned.fill(
            child: Container(
              color: Colors.white.withOpacity(0.5),
              child: Center(
                  child: SizedBox(
                height: 140.w,
                width: 140.w,
                child: Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_usmfx6bp.json'),
              )),
            ),
          )
      ],
    );
  }
}
