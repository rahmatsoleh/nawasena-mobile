import 'package:get/get.dart';
import 'package:nawasena/app/routes/app_pages.dart';

class SplashController extends GetxController {
  Future<void> login() async {
    Future.delayed(3.seconds, () {
      // session.checkSession();
      Get.offAllNamed(Routes.LOGINS);
    });
  }
}
