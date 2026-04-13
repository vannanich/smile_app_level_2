import 'package:flutter_application_1/app/auth/login_screen/login_screen_view.dart';
import 'package:flutter_application_1/app/modules/screen/homescreen/home_view.dart';
import 'package:flutter_application_1/app/modules/screen/onboarding/onboarding/onboarding_view.dart';
import 'package:flutter_application_1/app/modules/screen/onboarding_2/onboarding_2/onboarding_2_view.dart';
import 'package:flutter_application_1/app/modules/screen/onboarding_3/onboarding_3/onboarding_3_view.dart';
import 'package:flutter_application_1/app/modules/screen/survey/survey_1/survey_1_view.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeViewBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingView(),
      binding: OnboardingViewBinding(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 900),
    ),
    GetPage(
      name: AppRoutes.onboarding_2,
      page: () => Onboarding2View(),
      binding: Onboarding2ViewBinding(),
      transition: Transition.cupertino,
      transitionDuration: Duration(milliseconds: 900),
    ),
    GetPage(
      name: AppRoutes.onboarding_3,
      page: () => Onboarding3View(),
      binding: Onboarding3ViewBinding(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 900),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreenView(),
      binding: LoginScreenViewBinding(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 900),
    ),
    GetPage(
      name: AppRoutes.survey_1,
      page: () => Survey1View(),
      binding: Survey1ViewBinding(),
      transition: Transition.circularReveal,
      transitionDuration: Duration(milliseconds: 900),
    ),
  ];
}
