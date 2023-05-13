import 'package:get/get.dart';

import '../controllers/logins_controller.dart';

class LoginsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginsController>(
      () => LoginsController(),
    );
  }
}
