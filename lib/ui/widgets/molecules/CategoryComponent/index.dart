import 'package:ar_menu/ui/widgets/atoms/CategoryTitle/index.dart';
import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/ui/widgets/molecules/ProductCard/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryComponent extends GetView<MenuController> {
  const CategoryComponent({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle(
          title: category,
        ),
        ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.products.length,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(
                index: index,
              );
            }),
      ],
    );
  }
}
