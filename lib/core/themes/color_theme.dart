import 'package:flutter/material.dart';

class PColor {
  // Singleton instance
  static final PColor _instance = PColor._internal();

  // Factory constructor returns the same instance
  factory PColor() => _instance;

  // Private constructor
  PColor._internal();

  // Define colors with default values
  Color primary = const Color(0xFF2E3261);
  Color primaryLight = const Color(0xFF8288A2);
  Color secondary = const Color(0xFF4BAC87);
  Color success = const Color(0xFF4BAC87);
  Color info = const Color(0xFF05BFDB);
  Color warning = const Color(0xFFFFD93D);
  Color danger = const Color(0xFFBE3D3D);
  Color disabled = const Color(0xFFDCDEE7);
  Color white = const Color(0xFFFFFFFF);
  Color whiteSoft = const Color(0xFFE9E9E9);
  Color main = const Color(0xFF2E3261);
  Color black = const Color(0xFF151316);
  Color blackInSoft = const Color(0xFF222328);
  Color grey = const Color(0xff8288A2);
  Color softGrey = const Color(0xff8F95B2);
  Color orange = const Color(0xffE8A01D);
  Color limeGreen = const Color(0xff4BAC87);
  Color brown = const Color(0xff66460D);
  Color darkGrey = const Color(0xff0A0A0A);
  Color darkPrimary = const Color(0xff403C3C);
  Color darkSecondary = const Color(0xff669699);

  /// Listen to theme mode so white and black based on the theme mode
  Color blackWhite(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? whiteSoft
        : darkGrey;
  }

  Color cardBlackWhite(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? blackInSoft
        : white;
  }
}
