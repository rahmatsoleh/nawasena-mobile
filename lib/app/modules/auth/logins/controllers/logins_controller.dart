import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../services/login_services.dart';

class LoginsController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  bool isLoading = false;
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool emailValid = true;
  bool passwordValid = true;

  void validateInputs() {
    if (formKey.currentState!.validate()) {
      login();
    } else {
      update();
    }
  }

  Future<void> login() async {
    isLoading = true;
    update();
    final auth = await LoginService().login(emailC.text, passC.text);
    try {
      if (auth == true) {
        isLoading = false;
        update();
        Get.offAllNamed(Routes.MAIN_PAGES);
      } else {
        isLoading = false;
        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
