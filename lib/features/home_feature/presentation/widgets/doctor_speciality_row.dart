import 'package:doc_app/core/helper/extenstions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class DoctorSpecialityRow extends StatelessWidget {
  const DoctorSpecialityRow({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextWidget(title:title,fontSize: 20.sp,fontWeight: FontWeight.bold,),
        const Spacer(),
        GestureDetector(
          onTap: (){
            context.pushNamed(Routes.viewAllDocSpeciality);
          },
            child: Text(AppStrings.seeAll,style: TextStyle(
              fontSize: 15.sp,color: AppColors.mainColor,fontWeight: FontWeight.w400
            ),)),
      ],
    );
  }
}