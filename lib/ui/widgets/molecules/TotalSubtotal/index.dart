import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/ui/widgets/atoms/TitleValue/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalSubtotal extends GetView<MenuController> {
  const TotalSubtotal({
    Key? key,
    required this.variant,
  }) : super(key: key);

  final String variant;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleValue(
                title: "Subtotal",
                value: controller.getSubtotal(variant),
              ),
              TitleValue(
                title: "Total",
                value: controller.getTotal(variant),
              ),
            ],
          )),
    );
  }
}
