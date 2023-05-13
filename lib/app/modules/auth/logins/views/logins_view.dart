import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';

import '../../../../components/loading/app_loading.dart' as compt;
import '../../../../utils/colors/colors.dart';
import '../controllers/logins_controller.dart';
import 'section/footer_section.dart';
import 'section/form_sections.dart';
import 'section/hero_sections.dart';

class LoginsView extends GetView<LoginsController> {
  const LoginsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginsController>(builder: (context) {
      return compt.AppLoading(
        isLoading: context.isLoading,
        child: Scaffold(
          backgroundColor: bgColor,
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: DefaultPadding.all,
            child: CustomScrollView(
              slivers: [HeroSection(), FormSection()],
            ),
          ),
          bottomSheet: FooterSection(),
        ),
      );
    });
  }
}
