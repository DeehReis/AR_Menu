import 'package:ar_menu/routes/app_pages.dart';
import 'package:ar_menu/ui/pages/home_page.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ARMenu());
}

class ARMenu extends StatelessWidget {
  const ARMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AR Menu',
      theme: ThemeData(
        colorScheme: coffeeShopScheme,
        scaffoldBackgroundColor: background,
      ),
      initialRoute: Routes.INITIAL,
      getPages: AppPages.routes,
      home: const HomePage(),
    );
  }
}
