import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common_bloc/themes_cubit.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets_manager.dart';


class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color:BlocProvider.of<ThemesCubit>(context).state is ThemesDarkState?AppColors.bottomNavColor: AppColors.mainColor,
      child: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 20.w, right: 20.w),
        child:  Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
               CustomTextWidget(
                title: AppStrings.profile,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: BlocProvider.of<ThemesCubit>(context).state is ThemesDarkState ? AppColors.whiteColor : AppColors.mainColor,
              ),
              const Spacer(),
              SvgPicture.asset(AssetsManager.settingsImage)
            ],
          ),
        ),
      ),
    );
  }
}
