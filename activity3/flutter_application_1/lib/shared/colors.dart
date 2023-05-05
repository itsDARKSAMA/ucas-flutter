import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static final HexColor primaryColor = HexColor('#5927FF');
  static HexColor greenColor = HexColor('#37E39F');
  static HexColor secondryColor = HexColor('#8160EF');
  static HexColor whiteColor = HexColor('#FFFFFF');
  static HexColor offWhiteColor = HexColor('#F2F6F6');
  static HexColor blackColor = HexColor('#272727');
  static HexColor greyColor = HexColor('#7F8FA6');
  static HexColor darkOrangeColor = HexColor('#AF8344');
  static HexColor lightOrangeColor = HexColor('#E9C75E');
  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      HexColor('#8160EF'),
      HexColor('#5927FF'),
    ],
  );
}
