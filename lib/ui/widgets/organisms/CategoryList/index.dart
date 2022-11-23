import 'package:ar_menu/ui/widgets/molecules/CategoryComponent/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .7,
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
          itemCount: 1,
          padding: EdgeInsets.only(
            bottom: Get.height * .15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return const CategoryComponent(category: "Items:");
          }),
    );
  }
}
