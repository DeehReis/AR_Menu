import 'package:ar_menu/controllers/home_controller.dart';
import 'package:ar_menu/routes/app_pages.dart';
import 'package:ar_menu/ui/widgets/organisms/AppBarComponent/index.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  Future<void> changeTableStatus() async {
    final controller = Get.find<HomeController>();
    FirebaseFirestore.instance
        .collection("table")
        .doc(controller.table)
        .update({
      "status": "available",
    });
    controller.table = '0';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 100,
        ),
        child: SizedBox(
          height: 80,
          width: 80,
          child: FittedBox(
            child: FloatingActionButton(
                onPressed: () => Get.toNamed(Routes.CAMERA),
                backgroundColor: primary,
                child: const Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: white,
                )),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.only(top: Get.height * .25),
          decoration: const BoxDecoration(
            gradient: defaultGradient,
          ),
          child: Column(
            children: [
              const Text(
                "Escaneie o QR Code da mesa para continuar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              GestureDetector(
                onTap: () => changeTableStatus(),
                child: Icon(
                  Icons.qr_code,
                  color: white,
                  size: Get.height * .35,
                ),
              ),
            ],
          )),
    );
  }
}
