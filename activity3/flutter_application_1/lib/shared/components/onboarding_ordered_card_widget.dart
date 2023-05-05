import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors.dart';

class OnBoardingOrderedCard extends StatelessWidget {
  final String text;
  const OnBoardingOrderedCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 5,
              backgroundColor: AppColors.greenColor,
            ),
            const SizedBox(
              width: 9,
            ),
            Text(
              text,
              style: GoogleFonts.rubik(
                fontSize: 12,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 45),
      ],
    );
  }
}
