import 'package:get/get.dart';

class HomeController extends GetxController {
  bool isSelectedCategory = false;

  List<Map<String, dynamic>> category = [
    {"kategory": "Property", "status": false},
    {"kategory": "Elektro", "status": false},
    {"kategory": "Otomotif", "status": false},
    {"kategory": "Elektro", "status": false},
    {"kategory": "Elektro", "status": false},
    {"kategory": "Elektro", "status": false},
  ];

  void selectCategory(int index) {
    for (int i = 0; i < category.length; i++) {
      if (i == index) {
        category[i]['status'] = true;
      } else {
        category[i]['status'] = false;
      }
    }
    update();
  }
}
