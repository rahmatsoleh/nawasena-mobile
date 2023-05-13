import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nawasena/app/modules/auth/login/views/section/footer_section.dart';
import 'package:nawasena/app/modules/auth/login/views/section/form_sections.dart';
import 'package:nawasena/app/modules/auth/login/views/section/hero_sections.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        slivers: [HeroSection(), FormSection()],
      ),
      bottomSheet: FooterSection(),
    );
  }
}
