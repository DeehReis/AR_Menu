import 'package:ar_menu/bindings/menu_binding.dart';
import 'package:ar_menu/ui/pages/billing_page.dart';
import 'package:ar_menu/ui/pages/home_page.dart';
import 'package:ar_menu/ui/pages/item_details_page.dart';
import 'package:ar_menu/ui/pages/menu_page.dart';
import 'package:ar_menu/ui/pages/scan_page.dart';
import 'package:ar_menu/ui/pages/ar_viewer.dart';
import 'package:ar_menu/ui/pages/camera_scan_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.SCAN,
      page: () => const ScanPage(),
    ),
    GetPage(
      name: Routes.MENU,
      page: () => const MenuPage(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: Routes.ITEM_DETAILS,
      page: () => const ItemDetailsPage(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: Routes.BILL,
      page: () => const BillingPage(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: Routes.AR,
      page: () => const ARViewer(),
    ),
    GetPage(
      name: Routes.CAMERA,
      page: () => const QRViewExample(),
    ),
  ];
}
