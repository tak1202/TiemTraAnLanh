import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/common/widgets/form_divider.dart';
import 'package:tiemtra_anlanh/common/widgets/social_button.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/signup/widget/sign_up_form.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';
import 'package:tiemtra_anlanh/utils/helpers/helpers_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TeaHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TeaSize.defaultSpace),
          child: Column(
            children: [
              Text(TeaTexts.signUp,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: TeaSize.spaceBtwSections),
              TeaSignUpForm(),
              SizedBox(height: TeaSize.spaceBtwSections),
              TeaFormDivider(dark: dark),
              SizedBox(height: TeaSize.spaceBtwSections),
              TeaSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}

