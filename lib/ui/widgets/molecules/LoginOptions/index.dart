import 'package:ar_menu/controllers/home_controller.dart';
import 'package:ar_menu/routes/app_pages.dart';
import 'package:ar_menu/ui/widgets/atoms/LoginButton/index.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginOptions extends GetView<HomeController> {
  const LoginOptions({Key? key}) : super(key: key);

  Future<void> uploadingData() async {
    CollectionReference firestore =
        FirebaseFirestore.instance.collection("table");
    await firestore.add({
      'id': 1,
      'status': "available",
      'user_id': 0,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LoginButton(
          color: white,
          buttonText: "Login com o e-mail e senha",
          onPressed: () => Get.toNamed(Routes.SCAN),
        ),
        LoginButton(
          color: white,
          textColor: Colors.black,
          buttonText: "Login com o Google",
          onPressed: () => uploadingData(),
        ),
      ],
    );
  }
}
