import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/password_configuration/forget_password.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/signup/signup.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';

class TeaLoginForm extends StatelessWidget {
  const TeaLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TeaSize.spaceBtwSections),
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TeaTexts.email,
              ),
            ),
            SizedBox(height: TeaSize.spaceBtwInputFields),
            //Password
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TeaTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            SizedBox(height: TeaSize.spaceBtwInputFields / 2),
            //Remember&forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(TeaTexts.rememberMe)
                  ],
                ),
                //Forget Password
                TextButton(
                    onPressed: () =>Get.to(()=>ForgetPassword()),
                    child: Text(TeaTexts.forgetPassword))
              ],
            ),
            SizedBox(height: TeaSize.spaceBtwSections),
            //Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(TeaTexts.signIn))),
            SizedBox(height: TeaSize.spaceBtwItems),
            //Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(()=>SignUpScreen()),
                    child: Text(TeaTexts.createAccount))),
            //SizedBox(height: TeaSize.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}

