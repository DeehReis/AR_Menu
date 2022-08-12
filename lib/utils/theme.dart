import 'package:flutter/material.dart';

const Color primary = Color(0xFF4B3832);
const Color secondary = Color(0xFFBE9B7B);
const Color tertiary = Color(0xFF854442);
const Color background = Color(0xFFFFF4E6);
const Color lightText = Colors.black;
const Color darkText = Colors.white;

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