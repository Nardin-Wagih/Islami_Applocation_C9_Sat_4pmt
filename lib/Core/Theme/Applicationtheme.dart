import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData LightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
    primaryColor: Color(0xffB7935F),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
      bodySmall: GoogleFonts.elMessiri(fontSize: 20, color: Colors.black),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        )),
    primaryColor: Color(0xffB7935F),
  );
}
