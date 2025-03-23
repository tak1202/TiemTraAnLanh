import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/login/login.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';

class TeaSignUpForm extends StatelessWidget {
  const TeaSignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: TeaTexts.userName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: TeaSize.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: TeaTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: TeaSize.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TeaTexts.password,
              prefixIcon: Icon(Iconsax.security),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: TeaSize.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TeaTexts.password_check,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: TeaSize.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () =>Get.to(()=>LoginScreen()),
                child: Text(TeaTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
