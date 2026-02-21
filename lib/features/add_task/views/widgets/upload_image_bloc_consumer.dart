import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo/features/add_task/logic/add_task_cubit.dart';
import 'package:todo/features/add_task/logic/add_task_state.dart';
import 'package:todo/features/login/logic/login_state.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';

class UploadImageBlocListener extends StatelessWidget {
  const UploadImageBlocListener({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddTaskCubit,AddTaskState>(
      listenWhen: (previous, current) =>current is AddImageLoading||current is AddImageSuccess || current is AddImageError,
        listener: (BuildContext context,state){
        state.whenOrNull(
          success: (){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("تم رفع الصورة بنجاح ✅"), backgroundColor: Colors.green),
            );
          },
          failure: (error){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error), backgroundColor: Colors.red),
            );
          }
        );


        },
      buildWhen:  (previous, current) =>current is AddImageLoading||current is AddImageSuccess || current is AddImageError,
      builder: ( context,  state) {
       return GestureDetector(
          onTap: ()=>imageSelect(context),
          child: DottedBorder(
            options: RoundedRectDottedBorderOptions(
              color: ColorsManager.primary,
              strokeWidth: 2,
              dashPattern: const [3, 3],
              radius: const Radius.circular(12),
            ),
            child:state.maybeWhen(
              loading: ()=> Center(
                child: SizedBox(
                  width: 24.w,
                  height: 56.h,
                  child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                ),
              ),
              success: ()=>SizedBox(
                height: 56.h,
                width: double.infinity,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_photo_alternate_outlined, color: ColorsManager.primary),
                    horizontalSpacing(8),
                    Text("Add Img", style: TextStyles.font19PrimaryMedium),
                  ],
                ),
              ),
                orElse: ()=>SizedBox(
                  height: 56.h,
                  width: double.infinity,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_photo_alternate_outlined, color: ColorsManager.primary),
                      horizontalSpacing(8),
                      Text("Add Img", style: TextStyles.font19PrimaryMedium),
                    ],
                  ),
                ),)
          ),
        );

    },
    );
  }
  Future<void>imageSelect(BuildContext context)async{
    final ImagePicker picker = ImagePicker();
    File? _imageFile;
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {

      _imageFile=  File(image.path);

      context.read<AddTaskCubit>().uploadImage(_imageFile!);
    }


  }
}
