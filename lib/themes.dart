import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

const Color white = Colors.white;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    fontFamily: kFont,
    primaryColor: kAppBarColor,
    scaffoldBackgroundColor: kAppBarColor,
    brightness: Brightness.light,
  );
  static final dark = ThemeData(
    fontFamily: kFont,
    primaryColor: darkGreyClr,
    scaffoldBackgroundColor: darkHeaderClr,
    brightness: Brightness.dark,
  );
}
