import 'package:ar_menu/utils/app_utils.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
  }) : super(key: key);

  final String name;
  final String description;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const Divider(),
            Text(
              description,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            Text(
              AppUtils.formatCurrency(price),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
