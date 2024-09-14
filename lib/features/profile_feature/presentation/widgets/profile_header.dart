import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets_manager.dart';


class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,

      child: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
        child:  Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
               const CustomTextWidget(
                title: AppStrings.profile,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
              const Spacer(),
              SvgPicture.asset(AssetsManager.settingsImage,colorFilter: const ColorFilter.mode(AppColors.mainColor, BlendMode.srcIn),)
            ],
          ),
        ),
      ),
    );
  }
}
