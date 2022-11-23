import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:get/get.dart';

class ARViewer extends StatelessWidget {
  const ARViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: secondary,
        appBar: AppBar(
          title: Text(Get.arguments[0]),
          backgroundColor: primary,
        ),
        body: BabylonJSViewer(
          src: Get.arguments[1],
        ),
      ),
    );
  }
}
