import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo/features/edit_task/views/widgets/edit_task_form.dart';
import 'package:todo/features/home/data/models/task_response_model.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../../../core/widgets/select_image_field.dart';

class EditTaskScreen extends StatelessWidget {
  final TaskResponseModel taskResponseModel;
  const EditTaskScreen({super.key, required this.taskResponseModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 56.h,left: 22.w,right: 22.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(title: "Edit task"),
              verticalSpacing(24),
          GestureDetector(
            onTap: ()=>imageSelect(context),
            child: SelectImageField(),
          ),
              verticalSpacing(16),
          EditTaskForm(),
              verticalSpacing(24),
              AppTextButton(buttonText: "Edit task", textStyle: TextStyles.font19WhiteBold, onPressed: (){

              })

            ],
          ),
        ),
      ),

    );
  }
  Future<void>imageSelect(BuildContext context)async{
    final ImagePicker picker = ImagePicker();
    File? _imageFile;
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {

      _imageFile=  File(image.path);


    }


  }
}
