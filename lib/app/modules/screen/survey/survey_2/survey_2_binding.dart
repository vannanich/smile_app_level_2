part of 'survey_2_view.dart';

class Survey2ViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => Survey2ViewController());
   }
}