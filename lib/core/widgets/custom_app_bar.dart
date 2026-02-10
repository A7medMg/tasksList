import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../helper/extensions.dart';
import '../helper/spacing.dart';
import '../theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      GestureDetector(
          onTap: (){
            context.pop();
          },
          child: SvgPicture.asset("assets/svgs/Arrow _right.svg")),
      horizontalSpacing(8),
      Text(title,style: TextStyles.font16BlackBold,),
    ],);
  }
}
