import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';

class AvailableTimeItem extends StatelessWidget {
  const AvailableTimeItem({
    super.key,
    required this.itemIndex,
    required this.selectedIndex,
  });

  final int itemIndex;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return itemIndex == selectedIndex
        ? Container(
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.mainColor, width: 2),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30.h,
                  decoration: const BoxDecoration(
                    color: AppColors.mainColor,
                    shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 8.r,
                        backgroundColor: Colors.white,
                      ),
                      CustomTextWidget(title: 'At Clinic', fontSize: 15.sp, fontWeight: FontWeight.w500),
                    ],
                  ),
                ),
                CustomTextWidget(
                  title: '10:00',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 2.h,
                ),
                CustomTextWidget(
                  title: 'AM',
                  fontSize: 15.sp,
                ),
              ],
            ),
          )
        : Container(

            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.greyColor, width: 1),
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextWidget(
                  title: '10:00',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustomTextWidget(
                  title: 'AM',
                  fontSize: 15.sp,
                ),
              ],
            ),
          );
  }
}
