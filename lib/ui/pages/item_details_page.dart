import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/ui/widgets/molecules/BusinessBanner/index.dart';
import 'package:ar_menu/ui/widgets/organisms/AppBarComponent/index.dart';
import 'package:ar_menu/ui/widgets/organisms/CategoryList/index.dart';
import 'package:ar_menu/ui/widgets/organisms/ItemList/index.dart';
import 'package:ar_menu/ui/widgets/organisms/OrderBottomSheet/index.dart';
import 'package:ar_menu/utils/theme.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemDetailsPage extends GetView<MenuController> {
  const ItemDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: const AppBarComponent(),
      body: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
            gradient: defaultGradient,
          ),
          child: Stack(children: [
            Column(
              children: const [
                ItemList(),
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: OrderBottomSheet(
                variant: 'pedir',
              ),
            ),
          ])),
    );
  }
}
