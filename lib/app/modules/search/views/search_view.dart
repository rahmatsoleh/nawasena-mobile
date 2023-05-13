import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nawasena/app/modules/search/views/section/app_bar.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  const SearchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [AppBarSection()],
    ));
  }
}
