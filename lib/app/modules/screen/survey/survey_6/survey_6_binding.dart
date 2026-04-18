part of 'survey_6_view.dart';

class Survey6ViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => Survey6ViewController());
   }
}