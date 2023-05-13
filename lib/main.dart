import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/session/session_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SessionManager.init();
// await Preferences.init();
  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, widgets) {
          AppTextTheme.init(context);
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Nawasena',
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            theme: AppTheme.light,
          );
        }),
  );
}
