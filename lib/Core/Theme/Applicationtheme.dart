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
      colorScheme: ColorScheme.fromSeed(
        primary: Color(0xffB7935F),
        seedColor: Color(0xffB7935F),
        onSecondary: Color(0xffB7935F),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xffB7935F),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          size: 28,
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(
          size: 28,
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        bodySmall: GoogleFonts.elMessiri(fontSize: 20, color: Colors.black),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xffB7935F).withOpacity(0.7),
      ));
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
      primaryColor: Color(0xff141A2E),
      colorScheme: ColorScheme.fromSeed(
        primary: Color(0xff141A2E),
        seedColor: Color(0xff141A2E),
        onSecondary: Color(0xffFACC1D),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff141A2E),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          size: 28,
          color: Color(0xffFACC1D),
        ),
        selectedItemColor: Color(0xffFACC1D),
        unselectedIconTheme: IconThemeData(
          size: 28,
          color: Colors.white,
        ),
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        bodySmall: GoogleFonts.elMessiri(fontSize: 20, color: Colors.white),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xffB7935F).withOpacity(0.7),
      ));
}
