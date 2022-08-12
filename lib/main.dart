import 'package:ar_menu/ui/pages/scan_page.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(const ARMenu());

class ARMenu extends StatelessWidget {
  const ARMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AR Menu',
      theme: ThemeData(
        colorScheme: coffeeShopScheme,
        scaffoldBackgroundColor: background,
      ),
      home: const ScanPage(),
    );
  }
}
