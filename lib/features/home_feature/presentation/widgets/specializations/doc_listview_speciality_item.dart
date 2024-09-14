import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/assets_manager.dart';

class DocListviewSpecialityItem extends StatelessWidget {
  const DocListviewSpecialityItem(
      {super.key, required this.itemIndex, required this.selectedIndex});

  final int itemIndex;
  final int selectedIndex;

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
                    radius: 28,
                    backgroundColor: AppColors.lightBlue,
                    child: SvgPicture.asset(
                      AssetsManager.logo1,
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColors.lightBlue,
                  child: SvgPicture.asset(
                    AssetsManager.logo1,
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          const SizedBox(
            height: 8,
          ),
          CustomTextWidget(
            title: 'Specialization',
            fontSize: itemIndex == selectedIndex ? 14.sp : 12.sp,
            fontWeight:
                itemIndex == selectedIndex ? FontWeight.w500 : FontWeight.w300,

          )
        ],
      ),
    );
  }
}
