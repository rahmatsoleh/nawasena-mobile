import 'package:dio/dio.dart';
import 'package:nawasena/app/data/models/history_service.dart';
import 'package:nawasena/app/data/providers/endpoind.dart';
import 'package:nawasena/app/utils/session/session_manager.dart';

class HistoryService {
  Future<List<HistoryServices>> get() async {
    Dio _dio = Dio();
    Uri uri = Uri.parse(Endpoint.history);
    var token = session.getSession();
    try {
      final response = await _dio.getUri(uri,
          options: Options(headers: {"Authorization": "Bearer $token"}));
      print(response.statusCode);
      print(response.statusMessage);
      if (response.statusCode == 200) {
        List<dynamic> listData = response.data['data'] as List;
        return listData.map((e) => HistoryServices.fromJson(e)).toList();
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
