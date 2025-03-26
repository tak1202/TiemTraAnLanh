import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';

class TeaCheckboxTheme{
  TeaCheckboxTheme._();
  
  static CheckboxThemeData lightCheckboxTheme=CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)) {
        return TeaColors.primary;
      }else{
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkCheckboxTheme=CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)) {
        return TeaColors.primary;
      }else{
        return Colors.transparent;
      }
    })
  );
}