import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_qtasnim/config/app_config.dart';

class Style {
  static final Style _instance = Style._internal();
  factory Style() => _instance;
  Style._internal();

  TextStyle title = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(40),
    fontWeight: FontWeight.w600,
  );

  TextStyle semiTitle = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(40),
    fontWeight: FontWeight.w300,
  );

  TextStyle subtitle = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(35),
  );

  TextStyle subtitleLight = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(35),
    fontWeight: FontWeight.w100,
  );
}
