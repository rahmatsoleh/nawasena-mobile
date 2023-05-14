import 'package:dio/dio.dart';

import '../../../data/models/news_model.dart';

class NewsService {
  String apiKey = '42f20b17a8e74a508b59b7c819f05110';
  Future<List<News>> get() async {
    Dio _dio = Dio();
    Uri uri = Uri.parse('https://newsapi.org/v2/top-headlines/sources');
    try {
      final response = await _dio.getUri(uri,
          options: Options(headers: {"X-Api-Key": "$apiKey"}));
      print(response.statusCode);
      print(response.statusMessage);
      if (response.statusCode == 200) {
        List<dynamic> listData = response.data['sources'] as List;
        return listData.map((e) => News.fromJson(e)).toList();
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
