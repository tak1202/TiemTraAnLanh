import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tiemtra_anlanh/features/authentication/controller/onboarding_controller.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/device/device_utility.dart';
import 'package:tiemtra_anlanh/utils/helpers/helpers_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    final controller=OnBoardingController.instance;
    final dark=TeaHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: TeaDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TeaSize.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 2,
        effect: ExpandingDotsEffect(
            activeDotColor: dark? TeaColors.light : TeaColors.dark, dotHeight: 6),
      ),
    );
  }
}