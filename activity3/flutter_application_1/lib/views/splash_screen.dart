import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:flutter_application_1/shared/components/app_logo_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: const Center(
          child: AppLogo(),
        ),
      ),
    );
  }
}
