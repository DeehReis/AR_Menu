import 'package:ar_menu/ui/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(
          vertical: Get.height * .15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.camera,
              size: Get.height * .3,
            ),
            SizedBox(height: Get.height * .2, child: const LoginOptions())
          ],
        ),
      ),
    );
  }
}
