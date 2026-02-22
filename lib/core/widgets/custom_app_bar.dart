import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/home/data/models/task_response_model.dart';
import '../../features/task_details/widgets/pop_edit_menu.dart';
import '../helper/extensions.dart';
import '../helper/spacing.dart';
import '../theming/styles.dart';

class CustomAppBar extends StatelessWidget {
  final TaskResponseModel ?taskModel;
  final String title;
  final String ?icon;
  final String ?taskId;
  const CustomAppBar({super.key,required this.title, this.icon, this.taskId, this.taskModel});

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
      const Spacer(),
      if(icon!=null)
        PopEditMenu(iconUrl: icon!,taskId: taskId!, taskModel: taskModel!,),
    ],);
  }
}
