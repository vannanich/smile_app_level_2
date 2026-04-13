import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/shared/themes/app_colors.dart';
import 'package:get/get.dart';

part 'login_screen_binding.dart';
part 'login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenViewController> {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [SizedBox(height: 120), _buildHeader(), _buildStack()],
      ),
    );
  }

  Widget _buildHeader() {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _buildStack() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
        ),
      ],
    );
  }
}
