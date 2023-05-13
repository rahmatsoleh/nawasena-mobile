import 'package:dio/dio.dart';
import 'package:nawasena/app/data/providers/endpoind.dart';

import '../../../../utils/session/session_manager.dart';

class RegisterServices {
  Future<bool> reg(String nama, String email, String noHp, String pass) async {
    Dio _dio = Dio();
    try {
      final response = await _dio.post(Endpoint.login,
          data: formPayload(nama, email, noHp, pass),
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

  Map<String, dynamic> formPayload(
      String nama, String email, String noHp, String pass) {
    Map<String, dynamic> temp = <String, dynamic>{};
    temp['nama'] = nama;
    temp['email'] = email;
    temp['no_hp'] = noHp;
    temp['pass'] = pass;
    return temp;
  }
}
