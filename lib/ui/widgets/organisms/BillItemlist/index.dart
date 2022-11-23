import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/ui/widgets/molecules/BillItem/index.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillItemList extends GetView<MenuController> {
  const BillItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.orderedProducts.isNotEmpty
        ? Container(
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(16),
            ),
            height: Get.height * .7,
            padding: const EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: ListView.builder(
                itemCount: controller.orderedProducts.length,
                padding: EdgeInsets.only(
                  bottom: Get.height * .15,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return BillItem(
                    key: UniqueKey(),
                    index: index,
                  );
                }),
          )
        : SizedBox(
            height: Get.height - Get.height * .2,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    color: black,
                    Icons.shopping_bag,
                    size: Get.height * .3,
                  ),
                  const Text(
                    "Conta vazia!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ));
  }
}
