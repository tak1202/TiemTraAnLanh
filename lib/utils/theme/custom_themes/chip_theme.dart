import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';

class TeaChipTheme{
  TeaChipTheme._();

  static ChipThemeData lightChipTheme=ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.black),
    selectedColor: TeaColors.accent,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme=ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: TeaColors.accent,
    padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
    checkmarkColor: Colors.white,
  );
}