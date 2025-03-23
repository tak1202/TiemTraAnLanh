import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/password_configuration/reset_password.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TeaSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TeaTexts.forgetPassword,style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: TeaSize.spaceBtwItems),
            Text(TeaTexts.forgetPwSubTitle,style: Theme.of(context).textTheme.labelMedium),
            SizedBox(height: TeaSize.spaceBtwSections*2),
            TextFormField(
              decoration: InputDecoration(
                labelText: TeaTexts.email,prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            SizedBox(height: TeaSize.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: ()=>Get.off(()=>ResetPassword()), child: Text(TeaTexts.submit)),
            )
          ],
        ),
      ),
    );
  }
}
