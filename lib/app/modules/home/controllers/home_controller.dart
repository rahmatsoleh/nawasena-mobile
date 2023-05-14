import 'package:get/get.dart';

import '../../../data/models/news_model.dart';
import '../services/news_service.dart';

class HomeController extends GetxController {
  List<News> _news = [];
  List<News> get news => _news;

  setNews(List<News> data) {
    _news = data;
    update();
  }

  getNews() async {
    final service = NewsService();
    final data = await service.get();
    setNews(data);
  }

  @override
  void onInit() {
    getNews();
    super.onInit();
  }
}
