// part of 'onboarding_view.dart';

// class OnboardingViewController extends GetxController {
//   var currentIndex = 0.obs;

//   void changePage(int index) {
//     currentIndex.value = index;
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingViewController extends GetxController {
  var currentIndex = 0.obs;
  final PageController pageController = PageController();

  void changePage(int index) {
    currentIndex.value = index;
  }

  void nextPage() {
    if (currentIndex.value < 2) {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }
}
