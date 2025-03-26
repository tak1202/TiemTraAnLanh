import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';
import 'package:tiemtra_anlanh/utils/helpers/helpers_functions.dart';

class NavigationBottomStaff extends StatelessWidget {
  NavigationBottomStaff({super.key});

  final NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    final darkMode = TeaHelperFunctions.isDarkMode(Get.context!);

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 88,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) {
              controller.selectedIndex.value = index;
              controller.pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            backgroundColor: darkMode ? TeaColors.black : Colors.white,
            indicatorColor: darkMode
                ? TeaColors.white.withOpacity(0.1)
                : TeaColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home_1), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: 'Cart'),
              NavigationDestination(icon: Icon(Iconsax.profile_circle), label: 'Profile'),
            ],
          )),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) => controller.selectedIndex.value = index,
        children: controller.screens,
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final PageController pageController = PageController();

  final screens = [
    Container(color: Colors.green),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
  ];
}
