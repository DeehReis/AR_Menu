import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Counter extends GetView<MenuController> {
  const Counter({
    Key? key,
    required this.index,
    this.variant,
  }) : super(key: key);

  final int index;
  final String? variant;

  @override
  Widget build(BuildContext context) {
    return variant == "vertical" || variant == null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  controller.increase(index, isItemDetailPage: false);
                },
              ),
              Obx(
                () => Text("${controller.products[index].amount}"),
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  controller.decrease(index, isItemDetailPage: false);
                  controller.update();
                },
              ),
            ],
          )
        : SizedBox(
            width: Get.width * .3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    size: 20,
                  ),
                  onPressed: () {
                    controller.increase(index, isItemDetailPage: true);
                  },
                ),
                Obx(
                  () => Text("${controller.selectedProducts[index].amount}"),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.remove,
                    size: 20,
                  ),
                  onPressed: () {
                    controller.decrease(index, isItemDetailPage: true);
                    controller.update();
                  },
                ),
              ],
            ),
          );
  }
}
