import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/routes/app_pages.dart';
import 'package:ar_menu/ui/widgets/atoms/FooterButton/index.dart';
import 'package:ar_menu/ui/widgets/molecules/TotalSubtotal/index.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderBottomSheet extends GetView<MenuController> {
  const OrderBottomSheet({
    Key? key,
    required this.variant,
  }) : super(key: key);

  final String variant;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .12,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TotalSubtotal(
            variant: variant,
          ),
          FooterButton(
            variant: variant,
          ),
        ],
      ),
    );
  }
}
