import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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

  TextStyle get headingStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode ? Colors.white : Colors.black,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  TextStyle get subHeadingStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode ? Colors.white : Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  TextStyle get titleStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode ? Colors.white : Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  TextStyle get subTitleStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode ? Colors.white : Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }TextStyle get bodyStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode ? Colors.white : Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }TextStyle get secondBodyStyle{
    return GoogleFonts.lato(
      textStyle: TextStyle(
        color: Get.isDarkMode ? Colors.grey[200] : Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}