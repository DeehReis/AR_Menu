import 'package:ar_menu/ui/widgets/organisms/AppBarComponent/index.dart';
import 'package:ar_menu/ui/widgets/organisms/BillItemlist/index.dart';
import 'package:ar_menu/ui/widgets/organisms/OrderBottomSheet/index.dart';
import 'package:ar_menu/utils/theme.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillingPage extends StatelessWidget {
  const BillingPage({Key? key}) : super(key: key);

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
                BillItemList(),
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: OrderBottomSheet(
                variant: 'fechar',
              ),
            ),
          ])),
    );
  }
}
