import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/ui/widgets/molecules/BusinessBanner/index.dart';
import 'package:ar_menu/ui/widgets/organisms/AppBarComponent/index.dart';
import 'package:ar_menu/ui/widgets/organisms/CategoryList/index.dart';
import 'package:ar_menu/ui/widgets/organisms/OrderBottomSheet/index.dart';
import 'package:ar_menu/utils/theme.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends GetView<MenuController> {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: const AppBarComponent(),
      body: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            gradient: menuGradient,
          ),
          child: Stack(children: [
            Column(
              children: const [
                BusinessBanner(logoUrl: 'assets/banner.jpg'),
                CategoryList(),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Obx(
                () => OrderBottomSheet(
                  variant: controller.checkForAnySelectedAmount()
                      ? "itens"
                      : controller.orderedProducts.isNotEmpty
                          ? "conta"
                          : "vazio",
                ),
              ),
            ),
          ])),
    );
  }
}
