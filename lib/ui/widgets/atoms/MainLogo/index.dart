import 'package:flutter/material.dart';

class MainLogo extends StatelessWidget {
  const MainLogo({Key? key, this.size, this.color}) : super(key: key);

  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.food_bank,
      size: size ?? 24,
      color: color ?? Colors.white,
    );
    // const Image(
    //   image: AssetImage("./mainLogo.png"),
    // );
  }
}
