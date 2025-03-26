import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/common/styles/spacing_styles.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/login/widgets/login_form.dart';
import 'package:tiemtra_anlanh/common/widgets/login_signup/form_divider.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/login/widgets/login_header.dart';
import 'package:tiemtra_anlanh/common/widgets/login_signup/social_button.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/helpers/helpers_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TeaHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TeaSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, subtitle
              TeaLoginHeader(dark: dark),
              //Form
              TeaLoginForm(),
              TeaFormDivider(dark: dark),
              SizedBox(height: TeaSize.spaceBtwSections),
              //Footer
              TeaSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

