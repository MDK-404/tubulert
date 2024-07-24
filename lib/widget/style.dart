import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static final TextStyle appNameStyle = GoogleFonts.jost(
    textStyle: const TextStyle(
      fontSize: 32,
      color: Color(0xFFB70063),
      fontWeight: FontWeight.bold,
    ),
  );
  static final TextStyle signupStyle = GoogleFonts.playfairDisplay(
      textStyle: const TextStyle(
    fontSize: 30,
    color: Color(0xFFB70063),
    fontWeight: FontWeight.bold,
  ));
  static final TextStyle signupPage = GoogleFonts.openSans(
      textStyle: const TextStyle(
          color: Color(0xFFB70063), fontSize: 14, fontWeight: FontWeight.bold));
  static final TextStyle buttonStyle = GoogleFonts.plusJakartaSans(
      textStyle: const TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold));
}
