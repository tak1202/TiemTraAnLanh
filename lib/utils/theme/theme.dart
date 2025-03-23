import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/utils/theme/custom_themes/appbar_theme.dart';
import 'package:tiemtra_anlanh/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:tiemtra_anlanh/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:tiemtra_anlanh/utils/theme/custom_themes/chip_theme.dart';
import 'package:tiemtra_anlanh/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:tiemtra_anlanh/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:tiemtra_anlanh/utils/theme/custom_themes/text_field_theme.dart';
import 'package:tiemtra_anlanh/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.teal,
    textTheme: TeaTextTheme.lightTextTheme,
    chipTheme: TeaChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TeaAppBarTheme.lightAppBarTheme,
    checkboxTheme: TeaCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TeaBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TeaElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TeaOutlinedButtonTheme.lightOutLinedButtonTheme,
    inputDecorationTheme: TeaTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.teal,
    textTheme: TeaTextTheme.darkTextTheme,
    chipTheme: TeaChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TeaAppBarTheme.darkAppBarTheme,
    checkboxTheme: TeaCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TeaBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TeaElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TeaOutlinedButtonTheme.darkOutLinedButtonTheme,
    inputDecorationTheme: TeaTextFieldTheme.darkInputDecorationTheme,
  );
}
