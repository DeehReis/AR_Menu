import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          onPressed: () => null, child: const Icon(Icons.camera)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text("Escaneie o QR Code da mesa para continuar"),
          Container(
            width: Get.width * .5,
            height: Get.height * .5,
            decoration: const BoxDecoration(
                color: tertiary,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            padding: const EdgeInsets.all(5),
            child: const Icon(Icons.qr_code),
          ),
        ],
      ),
    );
  }
}
