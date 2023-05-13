import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/saldo_controller.dart';

class SaldoView extends GetView<SaldoController> {
  const SaldoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SaldoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SaldoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
