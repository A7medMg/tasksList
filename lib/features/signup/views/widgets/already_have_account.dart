import 'package:flutter/cupertino.dart';

import '../../../../core/helper/extensions.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';

class AleradyHaveAccount extends StatelessWidget {
  const AleradyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( "Already have any account? ",style: TextStyles.font14SecondeRegular),
        GestureDetector(
          onTap: ()=>context.pop(),
          child: Text( "Sign In",style: TextStyles.font14PrimaryBold.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: ColorsManager.primary,
            decorationThickness: 1.4,
          )),
        ),
      ],);
  }
}
