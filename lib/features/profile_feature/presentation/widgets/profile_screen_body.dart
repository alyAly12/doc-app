import 'package:doc_app/features/profile_feature/presentation/widgets/profile_header.dart';
import 'package:doc_app/features/profile_feature/presentation/widgets/user_detail_rows.dart';
import 'package:doc_app/features/profile_feature/presentation/widgets/user_name_and_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          top: 100.h,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: ScreenUtil.defaultSize.height,
                  width: ScreenUtil.defaultSize.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40.r),topLeft: Radius.circular(40.r)),
                    color: AppColors.mainColor
                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                      children: [
                        SizedBox(height: 20.h,),
                        const UserNameAndImage(),
                        SizedBox(height: 20.h,),
                        const AppointAndRecordRow(),
                        SizedBox(height: 20.h,),
                        UserDetailRows(title: AppStrings.personalInfo, image: AssetsManager.personInfo,onTap: (){},),
                        SizedBox(height: 20.h,),
                        UserDetailRows(title: AppStrings.testAndDiagnosis, image: AssetsManager.myTests,onTap: (){},),
                        SizedBox(height: 20.h,),
                        UserDetailRows(title: AppStrings.medicalRecords, image: AssetsManager.payments,onTap: (){},),
                        SizedBox(height: 20.h,),


                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

