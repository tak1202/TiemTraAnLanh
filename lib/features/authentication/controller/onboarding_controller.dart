import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tiemtra_anlanh/features/authentication/screen/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance=>Get.find();

  final pageController=PageController();
  Rx<int> currentPageIndex=0.obs;

  void updatePageIndicator(index)=>currentPageIndex.value=index;

  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }

  void nextPage() {
  if (currentPageIndex.value == 2) {
    Get.offAll(() => LoginScreen(), transition: Transition.noTransition);
  } else {
    int page = currentPageIndex.value + 1;
    currentPageIndex.value = page;
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 100), // Giảm thời gian chuyển đổi
      curve: Curves.easeInOut,
    );
  }
}


  void skipPage(){
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}