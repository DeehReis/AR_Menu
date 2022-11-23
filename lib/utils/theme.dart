import 'package:flutter/material.dart';

const Color primary = Color(0xFF3B1E00);
const Color secondary = Color(0xFFC4A27E);
const Color tertiary = Color(0xFF8A6844);
const Color background = Color(0xFFBEBD7B);
const Color white = Colors.white;
const Color black = Colors.black;
const Color lightText = Colors.white;
const Color darkText = Colors.black;

const ColorScheme coffeeShopScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: darkText,
    secondary: secondary,
    onSecondary: darkText,
    tertiary: tertiary,
    onTertiary: darkText,
    error: secondary,
    onError: darkText,
    background: background,
    onBackground: lightText,
    surface: secondary,
    onSurface: darkText);

const TextStyle h1 = TextStyle(
  fontSize: 40,
  color: primary,
);
const TextStyle h2 = TextStyle(
  fontSize: 30,
  color: tertiary,
);
const TextStyle bodyLight = TextStyle(
  fontSize: 20,
  color: lightText,
);
const TextStyle bodyDark = TextStyle(
  fontSize: 20,
  color: darkText,
);

const Gradient defaultGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [
    0.1,
    0.6,
  ],
  colors: [tertiary, secondary],
);

const Gradient menuGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [
    0.1,
    0.6,
  ],
  colors: [primary, secondary],
);
