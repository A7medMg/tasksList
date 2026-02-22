import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/home_cubit.dart';

class TaskStateSelection extends StatefulWidget {
  const TaskStateSelection({super.key});

  @override
  State<TaskStateSelection> createState() => _TaskStateSelectionState();
}

class _TaskStateSelectionState extends State<TaskStateSelection> {
  final List<String> items = [
    "All",
    "Inprogress",
    "Waiting",
    "Finished"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          bool isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                context.read<HomeCubit>().filterTasks(items[index]);
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: isSelected
                    ? ColorsManager.primary
                    : ColorsManager.lightPrimary,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Center(
                child: Text(
                  items[index],
                  style: TextStyles.font16SecondeBold.copyWith(
                    color: isSelected ? Colors.white : Colors.grey[600],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
