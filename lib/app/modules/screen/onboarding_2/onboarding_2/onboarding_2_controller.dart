part of 'onboarding_2_view.dart';

class Onboarding2ViewController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}
