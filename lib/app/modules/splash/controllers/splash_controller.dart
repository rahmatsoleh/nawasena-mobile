import 'package:get/get.dart';

import '../../../utils/session/session_manager.dart';

class SplashController extends GetxController {
  Future<void> login() async {
    Future.delayed(3.seconds, () {
      session.checkSession();
    });
  }
}
