import 'package:get/get.dart';
import 'package:nawasena/app/data/models/provider_service.dart';
import 'package:nawasena/app/modules/service/services/category_service.dart';
import 'package:nawasena/app/modules/service/services/provider_service.dart';

import '../../../data/models/category_model.dart';

class ServiceController extends GetxController {
  int countRating = 2;
  List<Category> _category = [];
  List<Category> get category => _category;
  int selectedCategory = 99;
  bool isLoading = false;
  List<ProviderServices> _searchProvider = [];
  List<ProviderServices> _provider = [];
  List<ProviderServices> get provider => _searchProvider;

  setCategory(List<Category> data) {
    _category = data;
    update();
  }

  setProvider(List<ProviderServices> data) {
    _searchProvider = data;
    _provider = data;
    update();
  }

  getCategory() async {
    final service = CategoryService();
    final data = await service.get();
    setCategory(data);
  }

  getServicesProduct(String id) async {
    final service = ProviderService();
    if (id == "") {
      final data = await service.get();
      setProvider(data);
    } else {
      final data = await service.getDataById(id);
      setProvider(data);
    }
  }

  void searchProvider(String value) {
    if (value.isEmpty) {
      _searchProvider = _provider;
    } else {
      _searchProvider = _provider
          .where((nama) =>
              nama.namaUsaha!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    update();
  }

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

  void selectCategory(int index, String id) {
    isLoading = true;
    update();
    selectedCategory = index;
    getServicesProduct(id);
    update();
    Future.delayed(1.seconds, () {
      isLoading = false;
      update();
    });
  }

  @override
  void onInit() {
    getCategory();
    super.onInit();
  }
}
