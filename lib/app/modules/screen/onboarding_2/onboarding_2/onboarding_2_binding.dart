part of 'onboarding_2_view.dart';

class Onboarding2ViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => Onboarding2ViewController());
   }
}