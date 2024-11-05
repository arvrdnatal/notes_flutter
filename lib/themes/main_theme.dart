import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_flutter/themes/main_colors.dart';

ThemeData getMainTheme() {
  return ThemeData(
    colorScheme: getColorScheme(),
    useMaterial3: true,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineLarge: GoogleFonts.poppinsTextTheme().headlineLarge?.copyWith(
        fontWeight: FontWeight.w900,
      ),
    ),
  );
}

ColorScheme getColorScheme() {
  return ColorScheme.fromSeed(seedColor: primaryColor).copyWith(
    secondary: secondaryColor,
  );
}
