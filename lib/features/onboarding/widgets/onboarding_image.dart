import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingImage extends StatelessWidget {
  final double height;
  const OnboardingImage({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return   Image.asset(
      "assets/pngs/onboarding.png",
      height: height.h,
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }
}
