import 'package:get/get.dart';

class HomeController extends GetxController {
  bool isSelectedCategory = false;

  List<Map<String, dynamic>> category = [
    {"kategory": "Property", "status": false},
    {"kategory": "Elektro", "status": false},
    {"kategory": "Otomotif", "status": false}
  ];

  void selectCategory(int index) {
    category[index]['status'] = true;
  }
}
