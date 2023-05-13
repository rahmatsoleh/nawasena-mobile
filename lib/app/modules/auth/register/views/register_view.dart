import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_packages_pack/my_packages.dart';

import '../controllers/register_controller.dart';
import 'section/form_sections.dart';
import 'section/hero_sections.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: DefaultPadding.all,
      child: CustomScrollView(
        slivers: [HeroSection(), FormSection()],
      ),
    ));
  }
}
