import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BusinessLogo extends StatelessWidget {
  const BusinessLogo({Key? key, required this.logoUrl}) : super(key: key);

  final String logoUrl;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoUrl,
      height: Get.height * .16,
      width: Get.width,
      fit: BoxFit.cover,
    );
  }
}
