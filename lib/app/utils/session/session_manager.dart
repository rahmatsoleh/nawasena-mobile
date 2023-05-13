import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_pages.dart';

class SessionManager {
  static SharedPreferences? _prefs;
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String? tokens;
  Future<void> saveSession(String? token) async {
    _prefs?.setString('token', token ?? '');
  }

  Future getSession() async {
    tokens = _prefs?.getString('token');
    return tokens;
  }

  Future clearSession() async {
    _prefs?.clear();
  }

  void checkSession() async {
    final token = await _prefs?.getString('token');
    if (token == null) {
      clearSession();
      Get.offAndToNamed(Routes.LOGINS);
    } else {
      Get.offAndToNamed(Routes.MAIN_PAGES);
    }
  }

  Future<String?> getLastLogin() async {
    final token = _prefs?.getString('token');
    if (token != null) {
      return token;
    }
    return null;
  }
}

final session = SessionManager();
