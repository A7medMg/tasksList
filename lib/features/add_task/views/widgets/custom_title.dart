import 'package:flutter/cupertino.dart';

import '../../../../core/theming/styles.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:TextStyles.font12SecondeRegular,

    );
  }
}
