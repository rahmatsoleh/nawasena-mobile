import 'package:dio/dio.dart';
import 'package:nawasena/app/data/providers/endpoind.dart';
import 'package:nawasena/app/utils/session/session_manager.dart';

import '../../../data/models/provider_service.dart';

class ProviderService {
  Future<List<ProviderServices>> get() async {
    Dio _dio = Dio();
    Uri uri = Uri.parse(Endpoint.service);
    var token = session.getSession();
    try {
      final response = await _dio.getUri(uri,
          options: Options(headers: {"Authorization": "Bearer $token"}));
      print(response.statusCode);
      print(response.statusMessage);
      if (response.statusCode == 200) {
        List<dynamic> listData = response.data['data'] as List;
        return listData.map((e) => ProviderServices.fromJson(e)).toList();
      } else {
        throw "Gagal";
      }
    } on DioError catch (e) {
      print(e);
      throw Exception(e);
// throw Exception(dioFlutterException(e));
    }
  }

  Future<List<ProviderServices>> getDataById(String id) async {
    Dio _dio = Dio();
    Uri uri = Uri.parse(Endpoint.serviceById(id));
    var token = session.getSession();
    try {
      final response = await _dio.getUri(uri,
          options: Options(headers: {"Authorization": "Bearer $token"}));
      print(response.statusCode);
      print(response.statusMessage);
      if (response.statusCode == 200) {
        List<dynamic> listData = response.data['data'] as List;
        return listData.map((e) => ProviderServices.fromJson(e)).toList();
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
