import 'package:flutter/material.dart';

class TeaColors {
  TeaColors._();

  // App Basic Colors
  static const Color primary = Color(0xFF7BAF9E);
  static const Color secondary = Color(0xFFA3D9B1);
  static const Color accent = Color(0xFFE0A96D);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFCFE8D5);
  static const Color dark = Color(0xFF2E3B2F);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Color(0xFF2E3B2F);
 
  // Button Colors
  static const Color buttonPrimary=Color(0xE0A96D);
  static const Color buttonPrimaryLight = Color(0x7BAF9E);
  static const Color buttonPrimaryDark = Color(0x4A7F6B);
  static const Color buttonSecondaryLight = Color(0xA3D9B1);
  static const Color buttonSecondaryDark = Color(0x5D9279);
  static const Color buttonOutlined = Colors.white;
  static const Color buttonOutlinedLight = Color(0xFFFFFF);
  static const Color buttonOutlinedDark = Color(0x2E3B2F);
  static const Color buttonError = Color(0xFFD32F2F);
  static const Color buttonSuccess = Color(0xFF388E3C);
  static const Color buttonWarning = Color(0xFFF57C00);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
