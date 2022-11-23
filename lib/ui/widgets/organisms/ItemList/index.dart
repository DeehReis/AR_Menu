import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/ui/widgets/molecules/ItemCard/index.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemList extends GetView<MenuController> {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.selectedProducts.isNotEmpty
        ? Container(
            height: Get.height * .7,
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
                itemCount: controller.selectedProducts.length,
                padding: EdgeInsets.only(
                  bottom: Get.height * .15,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ItemCard(
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
                    "Sem itens selecionados!",
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
