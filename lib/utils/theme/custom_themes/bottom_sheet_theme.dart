import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';

class TeaBottomSheetTheme {
  TeaBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme=BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

   static BottomSheetThemeData darkBottomSheetTheme=BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TeaColors.dark,
    modalBackgroundColor: TeaColors.dark,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}