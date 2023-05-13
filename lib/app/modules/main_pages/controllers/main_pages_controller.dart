import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nawasena/app/modules/akun/views/akun_view.dart';
import 'package:nawasena/app/modules/history/views/history_view.dart';
import 'package:nawasena/app/modules/home/views/home_view.dart';

import '../../service/views/service_view.dart';

class MainPagesController extends GetxController {
  var indexPages = Get.arguments ?? 0;
  void changeIndex(int index) {
    indexPages = index;
    update();
  }

  List<Widget> pages = [HomeView(), ServiceView(), HistoryView(), AkunView()];
}
