import 'package:ar_menu/ui/widgets/index.dart';
import 'package:ar_menu/utils/theme.dart';
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
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.1),
        decoration: const BoxDecoration(
          gradient: defaultGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.fastfood,
              color: white,
              size: Get.height * .35,
            ),
            Container(
                height: Get.height * .4,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * .1,
                ),
                child: const LoginOptions())
          ],
        ),
      ),
    );
  }
}
