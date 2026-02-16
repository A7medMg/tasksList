import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/helper/spacing.dart';

class TaskItemShimmer extends StatelessWidget {
  const TaskItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            // مكان الصورة
            Container(
              width: 66.w,
              height: 66.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // مكان العنوان (Title)
                        Container(
                          width: 100.w,
                          height: 16.h,
                          color: Colors.white,
                        ),
                        const Spacer(),
                        // مكان الـ Status
                        Container(
                          width: 60.w,
                          height: 22.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                        ),
                      ],
                    ),
                    verticalSpacing(8),
                    // مكان الوصف (Description)
                    Container(
                      width: double.infinity,
                      height: 14.h,
                      color: Colors.white,
                    ),
                    verticalSpacing(8),
                    // مكان الـ Priority والتاريخ
                    Row(
                      children: [
                        Container(
                          width: 50.w,
                          height: 14.h,
                          color: Colors.white,
                        ),
                        const Spacer(),
                        Container(
                          width: 70.w,
                          height: 14.h,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}