part of 'onboarding_3_view.dart';

class Onboarding3ViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => Onboarding3ViewController());
   }
}