import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/password_configuration/forget_password.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/signup/signup.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';
import 'package:tiemtra_anlanh/utils/helpers/helpers_functions.dart';
import 'package:tiemtra_anlanh/widgets/navigation_bottom_admin.dart';
import 'package:tiemtra_anlanh/widgets/navigation_bottom_staff.dart';

class TeaLoginForm extends StatelessWidget {
  const TeaLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TeaHelperFunctions.isDarkMode(context);

    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TeaSize.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: dark ? TeaColors.darkContainer : TeaColors.lightContainer,
                prefixIcon: Icon(Iconsax.direct_right, color: dark ? TeaColors.white : TeaColors.textPrimary),
                labelText: TeaTexts.email,
                labelStyle: TextStyle(color: dark ? TeaColors.white : TeaColors.textPrimary),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: dark ? TeaColors.borderSecondary : TeaColors.borderPrimary),
                ),
              ),
              style: TextStyle(color: dark ? TeaColors.white : TeaColors.textPrimary),
            ),
            SizedBox(height: TeaSize.spaceBtwInputFields),

            // Password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: dark ? TeaColors.darkContainer : TeaColors.lightContainer,
                prefixIcon: Icon(Iconsax.password_check, color: dark ? TeaColors.white : TeaColors.textPrimary),
                labelText: TeaTexts.password,
                labelStyle: TextStyle(color: dark ? TeaColors.white : TeaColors.textPrimary),
                suffixIcon: Icon(Iconsax.eye_slash, color: dark ? TeaColors.white : TeaColors.textPrimary),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: dark ? TeaColors.borderSecondary : TeaColors.borderPrimary),
                ),
              ),
              style: TextStyle(color: dark ? TeaColors.white : TeaColors.textPrimary),
            ),
            SizedBox(height: TeaSize.spaceBtwInputFields / 2),

            // Remember & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                      activeColor: TeaColors.primary,
                    ),
                    Text(TeaTexts.rememberMe, style: TextStyle(color: dark ? TeaColors.white : TeaColors.textPrimary)),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => ForgetPassword()),
                  child: Text(
                    TeaTexts.forgetPassword,
                    style: TextStyle(color: dark ? TeaColors.accent : Colors.blueAccent),
                  ),
                ),
              ],
            ),
            SizedBox(height: TeaSize.spaceBtwSections),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NavigationBottomAdmin()),
                style: ElevatedButton.styleFrom(
                  backgroundColor: TeaColors.accent,
                  foregroundColor: TeaColors.white,
                ),
                child: Text(TeaTexts.signIn),
              ),
            ),
            SizedBox(height: TeaSize.spaceBtwItems),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => SignUpScreen()),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: dark ? TeaColors.white : TeaColors.primary),
                  foregroundColor: dark ? TeaColors.white : TeaColors.primary,
                  backgroundColor: dark ? TeaColors.darkContainer : TeaColors.white,
                ),
                child: Text(TeaTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
