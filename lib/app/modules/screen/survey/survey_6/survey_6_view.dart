import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_routes.dart';
import 'package:flutter_application_1/app/shared/themes/app_colors.dart';
import 'package:flutter_application_1/app/shared/widgets/app_button_eleveted.dart';
import 'package:flutter_application_1/app/shared/widgets/app_button_outline.dart';
import 'package:flutter_application_1/app/shared/widgets/app_grid.dart';
import 'package:flutter_application_1/app/shared/widgets/app_stepper.dart';
import 'package:get/get.dart';

part 'survey_6_binding.dart';
part 'survey_6_controller.dart';

class Survey6View extends GetView<Survey6ViewController> {
  const Survey6View({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> myData = [
      {'title': 'Reduce Stress', 'image': 'assets/How_help/🧘.png'},
      {'title': 'Sleep Better', 'image': 'assets/How_help/😴 (1).png'},
      {'title': 'Stay Inspired', 'image': 'assets/How_help/💡.png'},
      {'title': 'Animal', 'image': 'assets/How_help/🏋️ (1).png'},
      {'title': 'Food', 'image': 'assets/How_help/🫂.png'},
      {'title': 'Travel', 'image': 'assets/How_help/🧠.png'},
      {'title': 'Books', 'image': 'assets/How_help/❤️_🩹.png'},
      {'title': 'Games', 'image': 'assets/How_help/⚡.png'},
      {'title': 'Art', 'image': 'assets/How_help/🎯 (1).png'},
    ];
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            AppStepper(currentPage: 1, totalSteps: 6),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.survey_1);
              },
              child: Icon(Icons.arrow_back, size: 30),
            ),
            SizedBox(height: 20),
            _buildBody(),
            SizedBox(height: 30),
            Expanded(child: AppGrid(items: myData)),

            AppButtonOutline(
              title: "Skip",
              onPressed: () {
                Get.toNamed(AppRoutes.survey_3);
              },
            ),
            SizedBox(height: 10),
            AppButton(
              title: "Continue",
              onPressed: () {
                Get.toNamed(AppRoutes.survey_3);
              },
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "How ",
                style: TextStyle(
                  color: AppColors.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "can we help you ?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Text(
          " Tell us what you need right now",
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }
}
