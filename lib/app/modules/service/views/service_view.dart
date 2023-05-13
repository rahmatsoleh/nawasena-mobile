import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/service_controller.dart';
import 'section/app_bar.dart';
import 'section/list_service.dart';

class ServiceView extends GetView<ServiceController> {
  const ServiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [AppBarSection(), ListServiceSection()],
    ));
  }
}