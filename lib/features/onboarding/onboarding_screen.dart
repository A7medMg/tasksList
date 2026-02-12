import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/helper/extensions.dart';
import 'package:todo/core/routing/routers_name.dart';
import 'package:todo/core/theming/styles.dart';
import 'package:todo/features/onboarding/widgets/description_text.dart';
import 'package:todo/features/onboarding/widgets/onboarding_image.dart';
import '../../core/helper/shard_pref_helper.dart';
import '../../core/helper/shared_pref_constants.dart';
import '../../core/widgets/app_text_button.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            OnboardingImage(height: 482,),
            DescriptionText(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: AppTextButton(
                isSvg: true,
                svgUrl: "assets/svgs/Arrow - Left.svg",
                buttonText: 'Let’s Start',
                textStyle: TextStyles.font19WhiteBold,
                onPressed: ()async {
                  await SharedPrefHelper.setData(SharedPrefConstans.showOnBoarding, true);
                  context.pushNamedAndRemoveUntil(RoutersName.login, predicate: (route) => false);


                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
