import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultLagreButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const DefaultLagreButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.secondryColor,
      ),
      child: TextButton(
          onPressed: onPressed(),
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor,
              fontSize: 18,
            ),
          )),
    );
  }
}
