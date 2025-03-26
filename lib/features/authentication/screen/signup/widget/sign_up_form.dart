import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/login/login.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';
import 'package:tiemtra_anlanh/utils/helpers/helpers_functions.dart';

class TeaSignUpForm extends StatelessWidget {
  const TeaSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TeaHelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: dark ? TeaColors.darkContainer : TeaColors.lightContainer,
                    labelText: TeaTexts.userName,
                    labelStyle: TextStyle(color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
                    prefixIcon: Icon(Iconsax.user, color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: dark ? TeaColors.borderSecondary : TeaColors.borderPrimary),
                    ),
                  ),
                  style: TextStyle(color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
                ),
              ),
            ],
          ),
          SizedBox(height: TeaSize.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: dark ? TeaColors.darkContainer : TeaColors.lightContainer,
              labelText: TeaTexts.email,
              labelStyle: TextStyle(color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
              prefixIcon: Icon(Iconsax.direct, color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: dark ? TeaColors.borderSecondary : TeaColors.borderPrimary),
              ),
            ),
            style: TextStyle(color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
          ),
          SizedBox(height: TeaSize.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: dark ? TeaColors.darkContainer : TeaColors.lightContainer,
              labelText: TeaTexts.password,
              labelStyle: TextStyle(color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
              prefixIcon: Icon(Iconsax.security, color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
              suffixIcon: Icon(Iconsax.eye_slash, color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: dark ? TeaColors.borderSecondary : TeaColors.borderPrimary),
              ),
            ),
            style: TextStyle(color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
          ),
          SizedBox(height: TeaSize.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: dark ? TeaColors.darkContainer : TeaColors.lightContainer,
              labelText: TeaTexts.password_check,
              labelStyle: TextStyle(color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
              prefixIcon: Icon(Iconsax.password_check, color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
              suffixIcon: Icon(Iconsax.eye_slash, color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: dark ? TeaColors.borderSecondary : TeaColors.borderPrimary),
              ),
            ),
            style: TextStyle(color: dark ? TeaColors.textWhite : TeaColors.textPrimary),
          ),
          SizedBox(height: TeaSize.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => LoginScreen()),
              style: ElevatedButton.styleFrom(
                backgroundColor: TeaColors.accent,
                foregroundColor: TeaColors.white,
              ),
              child: Text(TeaTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}