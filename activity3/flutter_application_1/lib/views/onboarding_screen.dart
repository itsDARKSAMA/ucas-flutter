import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:flutter_application_1/shared/components/app_logo_widget.dart';
import 'package:flutter_application_1/shared/components/onboarding_ordered_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final List<String> howHelpList = [
    'Cuckoo will help you to buy/sell your bit coins',
    'Cuckoo will help you to set the price tracker',
    'Cuckoo is faster smart & Sweet',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 53),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AppLogo(isCroppedLogo: true),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bit\nCuckoo",
                    style: GoogleFonts.rubik(
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  Text(
                    "Collect your bit coins",
                    style: GoogleFonts.rubik(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    "How Cuckoo will help?",
                    style: GoogleFonts.rubik(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  const SizedBox(height: 29),
                  for (int i = 0; i < howHelpList.length; i++)
                    OnBoardingOrderedCard(text: howHelpList[i]),
                  // const SizedBox(height: 29),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, bottom: 10),
              child: Text(
                "Enter your Mobile Number",
                style: GoogleFonts.rubik(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 35),
                  padding: const EdgeInsets.only(left: 25),
                  height: 56,
                  width: 260,
                  color: AppColors.whiteColor,
                  child: Center(
                    child: IntlPhoneField(
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.darkOrangeColor,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),
                      showDropdownIcon: false,
                      initialCountryCode: 'SA',
                      textAlignVertical: TextAlignVertical.center,
                      invalidNumberMessage: null,
                      dropdownTextStyle: GoogleFonts.rubik(
                        fontWeight: FontWeight.w500,
                        color: AppColors.greyColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 56,
                  width: 60,
                  decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_right_alt,
                      color: AppColors.whiteColor,
                      size: 35,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
