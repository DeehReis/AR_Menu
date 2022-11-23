import 'package:ar_menu/controllers/home_controller.dart';
import 'package:ar_menu/routes/app_pages.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarComponent extends GetView<HomeController>
    implements PreferredSizeWidget {
  const AppBarComponent({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primary,
      shadowColor: Colors.transparent,
      foregroundColor: white,
      title: SizedBox(
        width: Get.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  width: Get.width * .6,
                  height: 40,
                  padding: EdgeInsets.only(left: Get.width * .1),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: black.withOpacity(.5),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Olá, ${controller.user.username}! Mesa: ${controller.table}",
                        style: const TextStyle(
                          color: black,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(
                      color: black.withOpacity(.5),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      onPressed: () => Get.toNamed(Routes.SCAN),
                      icon: const Icon(
                        Icons.supervisor_account,
                        color: black,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
