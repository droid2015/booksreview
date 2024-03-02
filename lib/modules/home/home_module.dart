import 'package:get/get.dart';
import 'controllers/home_controller.dart';
import 'services/home_service.dart';

class HomeModule extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut(() => HomeService());
  }
}