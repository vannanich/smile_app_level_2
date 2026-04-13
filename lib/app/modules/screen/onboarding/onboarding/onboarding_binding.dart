part of 'onboarding_view.dart';

class OnboardingViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => OnboardingViewController());
   }
}