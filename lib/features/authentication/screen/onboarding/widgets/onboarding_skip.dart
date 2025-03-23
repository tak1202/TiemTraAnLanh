import 'package:flutter/material.dart';
import 'package:tiemtra_anlanh/features/authentication/controller/onboarding_controller.dart';
import 'package:tiemtra_anlanh/utils/constants/size.dart';
import 'package:tiemtra_anlanh/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TeaDeviceUtils.getAppBarHeight(),
        right: TeaSize.defaultSpace,
        child: TextButton(onPressed: () =>OnBoardingController.instance.skipPage(), child: Text('Bỏ Qua')));
  }
}