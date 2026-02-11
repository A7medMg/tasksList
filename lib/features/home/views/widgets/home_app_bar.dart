import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/core/helper/extensions.dart';
import 'package:todo/core/theming/colors_manager.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/routing/routers_name.dart';
import '../../../logout/logic/logout_cubit.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 22.w),
      elevation: 0,
      backgroundColor: ColorsManager.white,
      title: SvgPicture.asset("assets/svgs/home_logo.svg",width: 60.w,),
      actions: [
        GestureDetector(
            onTap: (){
              context.pushNamed(RoutersName.profile);

            },
            child: SvgPicture.asset("assets/svgs/profile.svg",)),
        horizontalSpacing(20),
        GestureDetector(
            onTap: (){
              context.read<LogoutCubit>().emitLogoutState();

            },
            child: SvgPicture.asset("assets/svgs/logout.svg",)),
      ],
    );
  }
}
