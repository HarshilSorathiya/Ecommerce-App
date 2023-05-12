import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xFF687daf);

class Styles {
  static Color primary = primaryColor;
  static Color blueColor = Color(0xD91130CE);
  static Color textColor = Color(0xFF3b3b3b);
  static Color bgColor = Color(0xFFeeedf2);
  static Color darkGreyColor = Color(0xFF526799);
  static const Color orangeColor = Color.fromARGB(255, 232, 126, 119);
  static Color lightBlueColor = Color(0xFFF4F6FD);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 28, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle0 = GoogleFonts.lato(
      fontSize: 35, color: textColor, fontWeight: FontWeight.w600);
  static TextStyle headLineStyle2 = TextStyle(
      fontSize: 23,
      color: textColor.withOpacity(.9),
      fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(
      fontSize: 17,
      color: textColor.withOpacity(.7),
      fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 15, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}
