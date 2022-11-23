import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width * .9,
        height: Get.height * .04,
        margin: EdgeInsets.symmetric(
          vertical: Get.height * .01,
        ),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        )));
  }
}
