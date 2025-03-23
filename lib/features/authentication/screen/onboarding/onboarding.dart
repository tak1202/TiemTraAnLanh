import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tiemtra_anlanh/features/authentication/controller/onboarding_controller.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:tiemtra_anlanh/utils/constants/image_strings.dart';
import 'package:tiemtra_anlanh/utils/constants/text_string.dart';
import 'widgets/onboarding_skip.dart';
import 'widgets/onboarding_next_button.dart';
import 'widgets/onboarding_page.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(OnBoardingController());
    return Scaffold(
      //backgroundColor: Color(0xFFCFE8D5),
      body: Stack(
        children: [
          //PageView
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TeaImage.onBoardingImage1,
                title: TeaTexts.onBoardingTitle1,
                subTitle: TeaTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TeaImage.onBoardingImage2,
                title: TeaTexts.onBoardingTitle2,
                subTitle: TeaTexts.onBoardingSubTitle2,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton()
        ],
      ),
    );
  }
}


