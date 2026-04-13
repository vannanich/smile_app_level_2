part of 'survey_1_view.dart';

class Survey1ViewBinding extends Bindings {

   @override
   void dependencies() {
       Get.lazyPut(() => Survey1ViewController());
   }
}