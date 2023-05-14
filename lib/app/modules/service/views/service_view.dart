import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

import '../controllers/service_controller.dart';
import 'section/app_bar.dart';
import 'section/list_service.dart';

class ServiceView extends GetView<ServiceController> {
  const ServiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(2.seconds, () {
              controller.getCategory();
            });
          },
          child: CustomScrollView(
            slivers: [AppBarSection(), ListServiceSection()],
          ),
        ));
  }
}
