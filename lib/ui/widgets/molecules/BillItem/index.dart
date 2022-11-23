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

class BillItem extends GetView<MenuController> {
  const BillItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${controller.orderedProducts[index].amount}x "),
                Text(controller.orderedProducts[index].name),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: Get.width * .01,
                  ),
                  width: Get.width * .15,
                  child: const Divider(
                    color: black,
                  ),
                ),
                Text(AppUtils.formatCurrency(
                    controller.orderedProducts[index].price *
                        controller.orderedProducts[index].amount)),
              ],
            )
            // ListTile(
            //   leading: Text(
            //     "${controller.orderedProducts[index].amount}x ",
            //     style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 20,
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            //   title: Text(controller.orderedProducts[index].name),
            //   subtitle: Text(
            //     AppUtils.formatCurrency(controller.orderedProducts[index].price),
            //   ),
            // ),
            ),
        const Divider(),
      ],
    );
  }
}
