import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key, this.imageUrl}) : super(key: key);

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
      child: imageUrl != null
          ? Image.asset(
              imageUrl!,
              height: Get.height * .16,
              width: Get.height * .12,
              fit: BoxFit.cover,
            )
          : Image.asset("assets/no_image.jpg"),
    );
  }
}
