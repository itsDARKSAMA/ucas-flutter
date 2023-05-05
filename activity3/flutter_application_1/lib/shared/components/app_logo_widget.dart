import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final bool isCroppedLogo;
  const AppLogo({super.key, this.isCroppedLogo = false});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/${isCroppedLogo ? 'logo2.png' : 'logo.png'}',
      height: 118,
      width: isCroppedLogo ? 138 : 166,
    );
  }
}
