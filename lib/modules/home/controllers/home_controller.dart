// modules/home/controllers/home_controller.dart

import 'package:booksreview/modules/home/services/home_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeService _service = Get.put(HomeService());
  var count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    // Initialize any dependencies or logic here
  }

  void increment() {
    count.value++;
  }
}
