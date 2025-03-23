import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.back(), icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TeaSize.defaultSpace),
          child: Column(
            children: [
              Text(TeaTexts.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              SizedBox(height: TeaSize.spaceBtwSections),
              Text(TeaTexts.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              SizedBox(height: TeaSize.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child:  ElevatedButton(onPressed: (){}, child: Text(TeaTexts.done)),
              ),
              SizedBox(height: TeaSize.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child:  TextButton(onPressed: (){}, child: Text(TeaTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
