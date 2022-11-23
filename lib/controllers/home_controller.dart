import 'package:ar_menu/data/models/user_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var user = User.empty();
  String table = '0';

  @override
  void onInit() {
    initTestUser();
    super.onInit();
  }

  void initTestUser() {
    user = User(
      id: 123,
      username: "DeehReis",
      email: "andretritolareis@gmail.com",
      imageUrl: "",
    );
  }
}
