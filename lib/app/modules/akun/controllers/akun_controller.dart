import 'package:get/get.dart';
import 'package:nawasena/app/data/models/user.dart';
import 'package:nawasena/app/utils/session/session_manager.dart';

import '../../../routes/app_pages.dart';
import '../services/user_services.dart';

class AkunController extends GetxController {
  bool isLoading = false;
  Users user = Users();
  getUser() async {
    final service = UserService();
    final data = await service.get();
    user = data;
    update();
  }

  logout() {
    isLoading = true;
    update();
    Future.delayed(2.seconds, () {
      session.clearSession();
      Get.offAllNamed(Routes.LOGINS);
      isLoading = true;
      update();
    });
  }

  @override
  void onInit() {
    getUser();
    super.onInit();
  }
}
