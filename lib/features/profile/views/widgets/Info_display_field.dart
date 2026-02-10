

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';

class InfoDisplayField extends StatelessWidget {
  final String title;
  final String subTitle;
  final String? svgUrl;
  const InfoDisplayField({super.key, required this.title, required this.subTitle, this.svgUrl});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 72.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorsManager.grey,
          borderRadius: BorderRadius.circular(10)

      ),
      child: ListTile(
        title: Text(title,style: TextStyles.font16MixMedium,),
        subtitle: Text(subTitle,style: TextStyles.font18MixBold,),
        trailing: svgUrl!=null?GestureDetector(
            onTap: ()async{
              await Clipboard.setData(ClipboardData(text: subTitle));

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('text copied to clipboard!'),
                  duration: const Duration(seconds: 2),
                ),
              );
            },
            child: SvgPicture.asset(svgUrl!)):null

      ),

    );
  }
}
