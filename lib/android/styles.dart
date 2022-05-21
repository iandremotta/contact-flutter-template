import 'package:flutter/material.dart';

const brightness = Brightness.light;

const primaryColor = const Color(0xFF2AACFF);
const accentCollor = const Color(0xFFFFFFFF);

ThemeData androidTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: TextTheme(
      body1: new TextStyle(
        fontFamily: "Poppins",
        color: Colors.pink,
      ),
    ),
    primaryColor: primaryColor,
    accentColor: accentCollor,
  );
}
