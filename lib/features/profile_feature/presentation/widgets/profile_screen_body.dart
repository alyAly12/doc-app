import 'package:doc_app/features/profile_feature/presentation/widgets/custom_theme_row.dart';
import 'package:doc_app/features/profile_feature/presentation/widgets/profile_header.dart';
import 'package:doc_app/features/profile_feature/presentation/widgets/user_detail_rows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/assets_manager.dart';
import 'appoint_and_record_row.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        const ProfileHeader(),
        Positioned.fill(
          top: 200.h,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: ScreenUtil.defaultSize.height,
                  width: ScreenUtil.defaultSize.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40.r),topLeft: Radius.circular(40.r)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 65.h,),
                      const CustomTextWidget(title: 'Name',color: AppColors.greyColor,fontSize: 30,),
                      SizedBox(height: 5.h,),
                      const CustomTextWidget(title: 'example@email.com',color: AppColors.lightTitleColor,fontSize: 15,),
                      SizedBox(height: 10.h,),
                      const AppointAndRecordRow(),
                      SizedBox(height: 10.h,),
                      UserDetailRows(title: AppStrings.personalInfo, image: AssetsManager.personInfo,onTap: (){},),
                      SizedBox(height: 10.h,),
                      UserDetailRows(title: AppStrings.testAndDiagnosis, image: AssetsManager.myTests,onTap: (){},),
                      SizedBox(height: 10.h,),
                      UserDetailRows(title: AppStrings.medicalRecords, image: AssetsManager.payments,onTap: (){},),
                      SizedBox(height: 10.h,),
                      const CustomThemeRow()

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 165.h,
          left: 0.w,
          right: 0.w,
          child: const CircleAvatar(
            radius: 55,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 48,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://plus.unsplash.com/premium_photo-1658506671316-0b293df7c72b?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            ),
          ),
        ),
      ],
    );
  }
}
