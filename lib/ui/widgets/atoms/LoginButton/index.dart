import 'package:ar_menu/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(
      {Key? key,
      required this.buttonText,
      this.color,
      this.textColor,
      required this.onPressed})
      : super(key: key);
  final String buttonText;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color ?? white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)))),
        child: Container(
            alignment: Alignment.center,
            width: Get.width * .8,
            height: Get.height * .05,
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor ?? Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )));
  }
}
