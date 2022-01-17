// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const Color bluishClr = Color(0xff4e5ae8);
const Color yellowClr = Color(0xffffb746);
const Color pinkClr = Color(0xffff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xff121212);
Color darkHeaderClr = Color(0xff424242);

class Themes {
  static final light = ThemeData(
    primaryColor: primaryClr,
    appBarTheme: AppBarTheme(color: primaryClr),
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    primaryColor: darkHeaderClr,
    appBarTheme: AppBarTheme(color: darkHeaderClr),
    brightness: Brightness.dark,
  );
}
