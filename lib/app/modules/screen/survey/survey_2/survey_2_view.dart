import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_routes.dart';
import 'package:flutter_application_1/app/shared/themes/app_colors.dart';
import 'package:flutter_application_1/app/shared/widgets/app_button_eleveted.dart';
import 'package:flutter_application_1/app/shared/widgets/app_button_outline.dart';
import 'package:flutter_application_1/app/shared/widgets/app_stepper.dart';
import 'package:get/get.dart';

part 'survey_2_binding.dart';
part 'survey_2_controller.dart';

class Survey2View extends GetView<Survey2ViewController> {
  const Survey2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            AppStepper(currentPage: 1, totalSteps: 5),
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
            Expanded(child: _buildGrid()),

            AppButtonOutline(title: "Skip", onPressed: () {}),
            SizedBox(height: 10),
            AppButton(title: "Continue", onPressed: () {}),
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
                "How",
                style: TextStyle(
                  color: AppColors.secondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "  are you feeling today ?",
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
          "  are you feeling today ?",
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      itemCount: 9,
      padding: EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              "Item ${index + 1}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
