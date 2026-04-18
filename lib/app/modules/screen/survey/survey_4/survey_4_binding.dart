part of 'survey_4_view.dart';

class Survey4ViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => Survey4ViewController());
   }
}