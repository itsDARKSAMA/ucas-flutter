import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:flutter_application_1/shared/components/app_logo_widget.dart';
import 'package:flutter_application_1/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'shared/components/onboarding_ordered_card_widget.dart';
import 'views/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
