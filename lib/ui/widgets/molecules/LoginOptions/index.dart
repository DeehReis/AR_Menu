import 'package:ar_menu/ui/widgets/atoms/LoginButton/index.dart';
import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LoginButton(
          color: Colors.lightBlue,
          buttonText: "Login com o e-mail e senha",
          onPressed: () => 1,
        ),
        LoginButton(
          color: Colors.white,
          buttonText: "Login com o Google",
          onPressed: () => 2,
        ),
      ],
    );
  }
}
