import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../shared/colors.dart';
import '../shared/components/app_default_large_button.dart';
import '../shared/components/app_logo_widget.dart';

class SignInScreen extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Center(child: AppLogo()),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 21),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bit Cuckoo',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 30,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      'Hi, SIGNIN!',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: AppColors.blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.offWhiteColor,
                              borderRadius: BorderRadius.circular(5),
                              // boxShadow: [
                              //   BoxShadow(
                              //       blurRadius: 5,
                              //       offset: const Offset(3, 6),
                              //       color: AppColors.lightOrangeColor
                              //           .withOpacity(0.15)),
                              // ],
                            ),
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
                              dropdownTextStyle: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w500,
                                color: AppColors.blackColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.offWhiteColor,
                              borderRadius: BorderRadius.circular(5),
                              // boxShadow: [
                              //   BoxShadow(
                              //       blurRadius: 5,
                              //       offset: const Offset(3, 6),
                              //       color: AppColors.lightOrangeColor
                              //           .withOpacity(0.15)),
                              // ],
                            ),
                            child: TextFormField(
                              obscureText: true,
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColors.blackColor,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              obscuringCharacter: "*",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 80),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'New Member?',
                              style: GoogleFonts.nunitoSans(
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackColor,
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'SIGNUP',
                                style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  color: AppColors.darkOrangeColor,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        DefaultLagreButton(
                          text: 'LOGIN',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Started Now',
                          style: GoogleFonts.nunitoSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),
                        const Icon(Icons.arrow_forward)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
