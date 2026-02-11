import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/features/profile/logic/get_profile_cubit.dart';
import 'package:todo/features/profile/logic/get_profile_state.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/shimmer_loading.dart';
import '../../data/models/profile_info_model.dart';
import 'Info_display_field.dart';

class ProfileBlocBuilder extends StatelessWidget {
  const ProfileBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProfileCubit, GetProfileState>(
      buildWhen: (previous, current) => current is Loading||current is Success||current is Error,
      builder: (context, state) {
       return state.maybeWhen(
          loading:(){
            return ShimmerLoading();
          },
          success:(data){
            ProfileInfoModel profileModel=data;

            return Column(
              children: [
                InfoDisplayField(title: 'Name', subTitle: profileModel.displayName!,),
                verticalSpacing(8),
                InfoDisplayField(title: 'Phone', subTitle: profileModel.phone!,svgUrl: "assets/svgs/copy.svg",),
                verticalSpacing(8),
                InfoDisplayField(title: 'Level', subTitle: profileModel.level!,),
                verticalSpacing(8),
                InfoDisplayField(title: 'Years of experience', subTitle: profileModel.experienceYears.toString(),),
                verticalSpacing(8),
                InfoDisplayField(title: 'Location', subTitle: profileModel.address!,),


              ],
            );

          },
            failure: (errorHandler){
              print(errorHandler);
              return const SizedBox.shrink();
            },
            orElse: (){
              return const SizedBox.shrink();
            }

        );

      }
    );
  }
}
