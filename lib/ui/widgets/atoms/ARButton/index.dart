import 'package:ar_menu/routes/app_pages.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ARButton extends StatelessWidget {
  const ARButton({Key? key, required this.name, required this.modelUrl})
      : super(key: key);

  final String name;
  final String modelUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: tertiary,
        shape: BoxShape.circle,
      ),
      child: IconButton(
          onPressed: () => Get.toNamed(Routes.AR, arguments: [name, modelUrl]),
          icon: const Icon(
            Icons.vrpano,
            color: white,
          )),
    );
  }
}
