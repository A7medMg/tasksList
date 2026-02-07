import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Image.asset(
      "assets/pngs/onboarding.png",
      height: 482.h,
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
