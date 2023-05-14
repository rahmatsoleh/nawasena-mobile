import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_service_controller.dart';
import 'section/footer_section.dart';
import 'section/hero_section.dart';

class DetailServiceView extends GetView<DetailServiceController> {
  const DetailServiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [HeroSection()],
      ),
      bottomSheet: FooterSection(),
    );
  }
}
