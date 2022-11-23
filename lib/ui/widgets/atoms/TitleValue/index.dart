import 'package:ar_menu/utils/app_utils.dart';
import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';

class TitleValue extends StatelessWidget {
  const TitleValue({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: primary,
            fontSize: 16,
          ),
        ),
        Text(
          AppUtils.formatCurrency(value),
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: black,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
