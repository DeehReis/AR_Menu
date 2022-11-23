import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:get/get.dart';

class MenuBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MenuController());
  }
}
