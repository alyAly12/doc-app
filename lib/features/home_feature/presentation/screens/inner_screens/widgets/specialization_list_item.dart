import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../../core/utils/app_colors.dart';

class SpecializationListItem extends StatelessWidget {
  const SpecializationListItem(
      {super.key,
      required this.itemIndex,
      required this.selectedIndex,
      required this.title,
      required this.imagePath});

  final int itemIndex;
  final int selectedIndex;
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.mainColor,width: 2),
                      shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColors.lightBlue,
                    child: Image.asset(
                      imagePath,
                      height: 82.h,
                      width: 82.w,

                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.lightBlue,
                  child: Image.asset(
                    imagePath,
                    height: 81.h,
                    width: 81.w,

                  ),
                ),
          const SizedBox(
            height: 8,
          ),
          CustomTextWidget(
            title: title,
            fontSize: itemIndex == selectedIndex ? 14.sp : 12.sp,
            fontWeight:
                itemIndex == selectedIndex ? FontWeight.w500 : FontWeight.w300,
          )
        ],
      ),
    );
  }
}
