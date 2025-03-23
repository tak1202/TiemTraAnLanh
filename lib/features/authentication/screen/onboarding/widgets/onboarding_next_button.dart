import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiemtra_anlanh/features/authentication/controller/onboarding_controller.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/device/device_utility.dart';
import 'package:tiemtra_anlanh/utils/helpers/helpers_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TeaHelperFunctions.isDarkMode(context);
    return Positioned(
        right: TeaSize.defaultSpace,
        bottom: TeaDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () =>OnBoardingController.instance.nextPage(),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: dark ? TeaColors.primary : Colors.greenAccent),
            child: Icon(Iconsax.arrow_right_3)));
  }
}
