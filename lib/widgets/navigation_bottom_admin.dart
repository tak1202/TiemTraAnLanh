import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tiemtra_anlanh/features/shop/screens/home/home.dart';
import 'package:tiemtra_anlanh/utils/constants/colors.dart';
import 'package:tiemtra_anlanh/utils/helpers/helpers_functions.dart';

class NavigationBottomAdmin extends StatelessWidget {
  const NavigationBottomAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(NavigationController());
     final dark = TeaHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(()=> NavigationBar(
          height: 88,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value=index,
          backgroundColor: dark?TeaColors.dark:TeaColors.light,
          indicatorColor: dark?TeaColors.black.withOpacity(0.1):TeaColors.white.withOpacity(0.1),
          destinations: [
          NavigationDestination(icon: Icon(Iconsax.home_1), label: 'Home'),
          NavigationDestination(
              icon: Icon(Iconsax.element_equal), label: 'DashBoard'),
          NavigationDestination(icon: Icon(Iconsax.receipt_2), label: 'Order'),
        ]),),
      body: Obx(()=>controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex=0.obs;
  final screens =[HomeScreen(),Container(color: Colors.purple),Container(color: Colors.orange)];
}