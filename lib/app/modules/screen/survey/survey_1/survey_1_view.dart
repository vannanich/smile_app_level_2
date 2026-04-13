import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/shared/themes/app_colors.dart';
import 'package:flutter_application_1/app/shared/widgets/app_space.dart';
import 'package:get/get.dart';

part 'survey_1_binding.dart';
part 'survey_1_controller.dart';

class Survey1View extends GetView<Survey1ViewController> {
  const Survey1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [AppSpace(height: 120), _buildSelectAge()]),
      ),
    );
  }

  Widget _buildSelectAge() {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Text(
                "How old are you ?",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "Please select your age ",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
