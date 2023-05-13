import 'package:dio/dio.dart';
import 'package:nawasena/app/data/providers/endpoind.dart';

import '../../../../utils/session/session_manager.dart';

class LoginService {
  Future<bool> login(String email, String pass) async {
    Dio _dio = Dio();
    try {
      final response = await _dio.post(Endpoint.login,
          data: {'email': email, 'password': pass},
          options: Options(headers: {'Content-Type': 'application/json'}));
      print(response.statusCode);
      print(response.statusMessage);
      if (response.statusCode == 200) {
        var token = response.data['accessToken'];
        session.saveSession(token);
        print(token);
        print('Berhasil');
        return true;
      } else {
        return false;
      }
    } on DioError catch (e) {
      print(e);
      return false;
// throw Exception(dioFlutterException(e));
    }
  }
}
