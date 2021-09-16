import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomThemes {
  static ThemeData getAppTheme(BuildContext context) {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      unselectedWidgetColor: Colors.black87,
      iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black87),
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Colors.black,
            primaryVariant: Colors.black26,
            secondary: const Color(0xFFE74A3D),
          ),
      textTheme: Theme.of(context).textTheme.copyWith(
            bodyText1: GoogleFonts.lato().copyWith(
              fontSize: 16,
              color: Colors.black87,
            ),
            bodyText2: GoogleFonts.lato().copyWith(
              fontSize: 14,
              color: Colors.black87,
            ),
            headline1: GoogleFonts.lato().copyWith(
              fontSize: 96,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            headline2: GoogleFonts.lato().copyWith(
              fontSize: 60,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            headline3: GoogleFonts.lato().copyWith(
              fontSize: 48,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            headline4: GoogleFonts.lato().copyWith(
              fontSize: 34,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            headline5: GoogleFonts.lato().copyWith(
              fontSize: 24,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
            headline6: GoogleFonts.lato().copyWith(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
    );
  }
}
