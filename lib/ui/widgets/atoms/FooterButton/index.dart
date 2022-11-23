import 'package:ar_menu/controllers/menu_controller.dart';
import 'package:ar_menu/routes/app_pages.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterButton extends GetView<MenuController> {
  const FooterButton({
    Key? key,
    required this.variant,
  }) : super(key: key);

  final String variant;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: variant == "pedir"
            ? Colors.green
            : variant == "fechar"
                ? Colors.red
                : variant == "vazio"
                    ? Colors.grey
                    : primary,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(
        8,
      ),
      margin: const EdgeInsets.only(left: 20),
      child: TextButton(
        onPressed: variant == "vazio"
            ? () => {}
            : () {
                variant == "itens"
                    ? controller.itemsFunction()
                    : variant == "conta"
                        ? controller.billFunction()
                        : variant == "pedir"
                            ? controller.selectedProducts.isNotEmpty
                                ? controller.orderFunction()
                                : null
                            : variant == "fechar"
                                ? controller.finishFunction()
                                : Routes.MENU;
              },
        child: Text(
          "${variant.capitalizeFirst}",
          style: const TextStyle(
            color: white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
