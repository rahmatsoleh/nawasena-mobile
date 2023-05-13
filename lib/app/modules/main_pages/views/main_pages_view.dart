import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/main_pages_controller.dart';

class MainPagesView extends GetView<MainPagesController> {
  const MainPagesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainPagesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MainPagesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
