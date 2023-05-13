import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/akun_controller.dart';

class AkunView extends GetView<AkunController> {
  const AkunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AkunView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AkunView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
