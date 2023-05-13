import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nawasena/app/modules/auth/register/services/register_services.dart';

import '../../../../routes/app_pages.dart';

class RegisterController extends GetxController {
  TextEditingController namaC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController noHpC = TextEditingController();
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
    final auth = await RegisterServices()
        .reg(namaC.text, emailC.text, noHpC.text, passC.text);
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
