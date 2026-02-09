import 'package:flutter/cupertino.dart';

import '../../../../core/helper/extensions.dart';
import '../../../../core/routing/routers_name.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text( "Don't have an account? ",style: TextStyles.font14SecondeRegular),
        GestureDetector(
          onTap: ()=>context.pushNamed(RoutersName.signUp),
          child: Text( "Sign Up here",style: TextStyles.font14PrimaryBold.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: ColorsManager.primary,
            decorationThickness: 1.4,
          )),
        ),
      ],);
  }
}
