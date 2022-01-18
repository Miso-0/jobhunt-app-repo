// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class jobhuntThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    appBarTheme: AppBarTheme(color: Colors.black, elevation: 0),
    iconTheme: IconThemeData(color: Colors.blue.shade900),
    primaryColor: Colors.blue.shade900,
    primaryColorLight: Colors.grey.shade900,
    primaryColorDark: Colors.grey.shade900,
    cardColor: Colors.grey.shade900,
    textTheme: TextTheme(
      bodyText1: GoogleFonts.montserrat(
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
      bodyText2: GoogleFonts.oswald(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue.shade900,
          fontSize: 20,
        ),
      ),
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.blue.shade900),
    primaryColor: Colors.blue.shade900,
    primaryColorLight: Colors.white,
    primaryColorDark: Colors.blue.shade900,
    cardColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.white,
    ),
    textTheme: TextTheme(
      bodyText1: GoogleFonts.montserrat(
        textStyle: TextStyle(
          color: Colors.grey.shade900,
          fontSize: 17,
        ),
      ),
      bodyText2: GoogleFonts.oswald(
        textStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue.shade900,
          fontSize: 20,
        ),
      ),
    ),
  );
}
