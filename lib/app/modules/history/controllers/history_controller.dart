import 'package:get/get.dart';
import 'package:nawasena/app/data/models/history_service.dart';
import 'package:nawasena/app/modules/history/service/history_service.dart';

class HistoryController extends GetxController {
  List<HistoryServices> _historis = [];
  List<HistoryServices> get histories => _historis;

  setHistory(List<HistoryServices> data) {
    _historis = data;
    update();
  }

  getHistory() async {
    final service = HistoryService();
    final data = await service.get();
    setHistory(data);
  }

  @override
  void onInit() {
    getHistory();
    super.onInit();
  }
}
