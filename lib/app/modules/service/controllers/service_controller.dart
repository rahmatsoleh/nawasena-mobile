import 'package:get/get.dart';

class ServiceController extends GetxController {
  int countRating = 2;
  List<Map<String, dynamic>> category = [
    {"kategory": "All", "status": true},
    {
      "kategory": "Property",
      "status": false,
    },
    {
      "kategory": "Elektro",
      "status": false,
    },
    {
      "kategory": "Otomotif",
      "status": false,
    },
    {
      "kategory": "Elektro",
      "status": false,
    },
    {
      "kategory": "Elektro",
      "status": false,
    },
    {
      "kategory": "Elektro",
      "status": false,
    },
  ];

  List<Map<String, dynamic>> listService = [
    {"nama": "Ali Imron", "jarak": "2,5", "status": "Aktif", "rating": 3.0},
    {
      "nama": "Ali Imron",
      "jarak": "2,5",
      "status": "Tidak Aktif",
      "rating": 5.0
    },
    {"nama": "Ali Imron", "jarak": "2,5", "status": "Aktif", "rating": 1.0},
    {"nama": "Ali Imron", "jarak": "2,5", "status": "Aktif", "rating": 2.0},
    {"nama": "Ali Imron", "jarak": "2,5", "status": "Bussy", "rating": 5.0},
    {"nama": "Ali Imron", "jarak": "2,5", "status": "Aktif", "rating": 2.0},
    {
      "nama": "Ali Imron",
      "jarak": "2,5",
      "status": "Tidak Aktif",
      "rating": 3.0
    },
    {"nama": "Ali Imron", "jarak": "2,5", "status": "Aktif", "rating": 3.0},
    {
      "nama": "Ali Imron",
      "jarak": "2,5",
      "status": "Tidak Aktif",
      "rating": 2.0
    },
    {
      "nama": "Ali Imron",
      "jarak": "2,5",
      "status": "Tidak Aktif",
      "rating": 1.0
    },
    {"nama": "Ali Imron", "jarak": "2,5", "status": "Bussy", "rating": 5.0},
    {"nama": "Ali Imron", "jarak": "2,5", "status": "Aktif", "rating": 5.0},
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
