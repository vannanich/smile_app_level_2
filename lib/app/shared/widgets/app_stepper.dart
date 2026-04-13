import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/shared/themes/app_colors.dart';

class AppStepper extends StatelessWidget {
  final int currentPage;
  final int totalSteps;

  const AppStepper({
    super.key,
    required this.currentPage,
    required this.totalSteps,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(totalSteps, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          width: 70,
          height: 4,
          decoration: BoxDecoration(
            color: currentPage == index ? AppColors.secondary : Colors.grey,
            borderRadius: BorderRadius.circular(50),
          ),
        );
      }),
    );
  }
}
