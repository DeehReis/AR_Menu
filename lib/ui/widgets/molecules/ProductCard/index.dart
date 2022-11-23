import 'package:ar_menu/data/models/product_model.dart';
import 'package:ar_menu/ui/widgets/atoms/ARButton/index.dart';
import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/ui/widgets/atoms/Counter/index.dart';
import 'package:ar_menu/ui/widgets/atoms/ProductImage/index.dart';
import 'package:ar_menu/ui/widgets/atoms/ProductInfo/index.dart';
import 'package:ar_menu/utils/theme.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class ProductCard extends GetView<MenuController> {
  const ProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * .9,
      height: Get.height * .15,
      margin: EdgeInsets.symmetric(
        vertical: Get.height * .01,
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        ProductImage(
          imageUrl: controller.products[index].imageUrl,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ARButton(
                    name: controller.products[index].name,
                    modelUrl: controller.products[index].modelUrl),
                ProductInfo(
                  name: controller.products[index].name,
                  description: controller.products[index].description,
                  price: controller.products[index].price,
                ),
                Counter(
                  index: index,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
