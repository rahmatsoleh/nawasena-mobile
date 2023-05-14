import 'package:dio/dio.dart';

import '../../../data/models/user.dart';
import '../../../data/providers/endpoind.dart';
import '../../../utils/session/session_manager.dart';

class UserService {
  Future<Users> get() async {
    Dio _dio = Dio();
    Uri uri = Uri.parse(Endpoint.user);
    var token = session.getSession();
    try {
      final response = await _dio.getUri(uri,
          options: Options(headers: {"Authorization": "Bearer $token"}));
      print(response.headers);
      print(response.statusCode);
      print(response.statusMessage);
      if (response.statusCode == 200) {
        return Users.fromJson(response.data['data']);
      } else {
        throw "Gagal";
      }
    } on DioError catch (e) {
      print(e);
      throw Exception(e);
// throw Exception(dioFlutterException(e));
    }
  }
}
