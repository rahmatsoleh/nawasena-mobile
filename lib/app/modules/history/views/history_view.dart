import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nawasena/app/utils/colors/colors.dart';

import '../controllers/history_controller.dart';
import 'section/appbar_section.dart';
import 'section/list_service.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(2.seconds, () {
              controller.getHistory();
            });
          },
          child: CustomScrollView(
            slivers: [AppBarSection(), ListHistorySection()],
          ),
        ));
  }
}
