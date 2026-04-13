part of 'onboarding_3_view.dart';

class Onboarding3ViewController extends GetxController {
  var currentIndex = 0.obs;
  void changePage(int index) {
    currentIndex.value = index;
  }
}
