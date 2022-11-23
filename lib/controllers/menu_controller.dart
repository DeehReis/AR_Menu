import 'package:ar_menu/controllers/home_controller.dart';
import 'package:ar_menu/data/models/product_model.dart';
import 'package:ar_menu/routes/app_pages.dart';
import 'package:ar_menu/ui/widgets/molecules/CloseBillDialog/index.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  var products = <Product>[].obs;
  var selectedProducts = <Product>[].obs;
  var orderedProducts = <Product>[].obs;

  @override
  void onInit() {
    startProductList();
    super.onInit();
  }

  void clearMenu() {
    products = RxList<Product>();
    selectedProducts = RxList<Product>();
    orderedProducts = RxList<Product>();
    startProductList();
  }

  void startProductList() {
    var productA = Product(
      id: 0,
      name: "Latte Café",
      description: "Delicioso latte tradicional",
      imageUrl: "assets/caffe_latte.jpg",
      modelUrl: "assets/caffe_latte.glb",
      price: 5.00,
    );
    var productB = Product(
      id: 1,
      name: "Latte Nutella",
      description: "Latte com um toque de Nutella",
      imageUrl: "assets/nutella_latte.jpg",
      modelUrl: "assets/Nuttella_Latte.glb",
      price: 6.50,
    );
    var productC = Product(
      id: 2,
      name: "Latte Vanilla Gelado",
      description: "Latte com um toque de baunilha",
      imageUrl: "assets/vanilla_iced_latte.jpg",
      modelUrl: "assets/vanilla_iced_latte.glb",
      price: 6.50,
    );
    var productD = Product(
      id: 3,
      name: "Frutas",
      description: "Prato de frutas para uma refeição saudável",
      imageUrl: "assets/fruit_bowl.jpg",
      modelUrl: "assets/Avocados.glb",
      price: 15.00,
    );

    products.add(productA);
    products.add(productB);
    products.add(productC);
    products.add(productD);
  }

  void filterSelectedProducts() {
    selectedProducts = RxList<Product>();
    selectedProducts.addAll(products);
    selectedProducts.retainWhere((element) => element.amount >= 1);
    update();
  }

  void addToOrderedProducts() {
    for (var element in selectedProducts) {
      if (element.amount >= 1) {
        if (orderedProducts.isNotEmpty) {
          if (orderedProducts
              .map((element2) => element2.id)
              .contains(element.id)) {
            Product product = orderedProducts
                .singleWhere((element2) => element2.id == element.id);
            product.amount = product.amount + element.amount;
          } else {
            orderedProducts.add(Product.fromObject(element));
          }
        } else {
          orderedProducts.add(Product.fromObject(element));
        }
      }
    }
  }

  bool checkForAnySelectedAmount() {
    bool found = false;
    for (var element in products) {
      if (element.amount >= 1) {
        found = true;
        break;
      }
    }
    return found;
  }

  void increase(int index, {required bool isItemDetailPage}) {
    if (isItemDetailPage) {
      selectedProducts[index].amount++;
      products
          .firstWhere((element) => element.id == selectedProducts[index].id)
          .amount = selectedProducts[index].amount;
      selectedProducts.refresh();
    } else {
      products[index].amount++;
    }
    products.refresh();
    filterSelectedProducts();
    update();
  }

  void decrease(int index, {required bool isItemDetailPage}) {
    if (isItemDetailPage) {
      if (selectedProducts[index].amount > 0) {
        selectedProducts[index].amount--;
        products
            .firstWhere((element) => element.id == selectedProducts[index].id)
            .amount = selectedProducts[index].amount;
      }
    } else {
      if (selectedProducts[index].amount > 0) products[index].amount--;
    }

    selectedProducts.refresh();
    products.refresh();
    filterSelectedProducts();
    update();
  }

  double getSubtotal(String variant) {
    double subtotal = 0.0;
    if (orderedProducts.isNotEmpty) {
      subtotal = orderedProducts.fold<double>(
          0, (sum, item) => sum + (item.amount * item.price));
    }
    if (variant == "itens" || variant == "pedir") {
      subtotal = subtotal +
          selectedProducts.fold<double>(
              0, (sum, item) => sum + (item.amount * item.price));
    }
    return subtotal;
  }

  double getTotal(String variant) {
    return getSubtotal(variant) + 10.0;
  }

  void billFunction() {
    Get.toNamed(Routes.BILL);
    update();
  }

  void itemsFunction() {
    Get.toNamed(Routes.ITEM_DETAILS);
    update();
  }

  void orderFunction() {
    addToOrderedProducts();
    products = RxList<Product>();
    selectedProducts = RxList<Product>();
    startProductList();
    Get.toNamed(Routes.MENU);
    Get.snackbar(
      'Confirmação',
      'Pedido realizado!',
      colorText: white,
      backgroundColor: Colors.green,
    );
    update();
  }

  void finishFunction() {
    Get.dialog(
      CloseBillDialog(onYesPressed: () => closeBill()),
      barrierDismissible: false,
    );
    update();
  }

  Future<void> changeTableStatus() async {
    final controller = Get.find<HomeController>();
    FirebaseFirestore.instance
        .collection("table")
        .doc(controller.table)
        .update({
      "user_id": 0,
      "status": "awaiting_payment",
    });
  }

  void closeBill() {
    clearMenu();
    Get.snackbar(
      'Conta fechada:',
      'Um garçom está a caminho para realizar o pagamento!',
      colorText: white,
      backgroundColor: Colors.amber,
    );
    changeTableStatus();
    Get.toNamed(Routes.SCAN);
  }
}
