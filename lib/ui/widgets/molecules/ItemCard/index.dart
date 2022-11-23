import 'package:ar_menu/data/models/product_model.dart';
import 'package:ar_menu/ui/widgets/atoms/ARButton/index.dart';
import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/ui/widgets/atoms/Counter/index.dart';
import 'package:ar_menu/ui/widgets/atoms/ProductImage/index.dart';
import 'package:ar_menu/ui/widgets/atoms/ProductInfo/index.dart';
import 'package:ar_menu/utils/theme.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:ar_menu/utils/app_utils.dart';

class ItemCard extends GetView<MenuController> {
  const ItemCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: Get.height * .01,
      ),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        trailing: Counter(
          variant: 'horizontal',
          index: index,
        ),
        title: Text(controller.selectedProducts[index].name),
        subtitle: Text(
          AppUtils.formatCurrency(controller.selectedProducts[index].price),
        ),
      ),
    );
  }
}
