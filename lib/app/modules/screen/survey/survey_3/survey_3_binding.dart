part of 'survey_3_view.dart';

class Survey3ViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => Survey3ViewController());
   }
}