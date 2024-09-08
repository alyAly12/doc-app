import 'package:doc_app/features/home_feature/presentation/widgets/doctors/recommended_doc_listview.dart';
import 'package:doc_app/features/home_feature/presentation/widgets/specializations/doc_listview_speciality.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_strings.dart';
import 'doctor_blue_banner.dart';
import 'doctor_speciality_row.dart';
import 'home_top_bar.dart';


class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBar(),
            SizedBox(
              height: 5.h,
            ),
            const DoctorBlueBanner(),
            SizedBox(
              height: 16.h,
            ),
            const DoctorSpecialityRow(
              title: AppStrings.docSpecialist,
            ),
            SizedBox(
              height: 16.h,
            ),
            const DocListviewSpeciality(),
            SizedBox(height: 8.h,),
            const RecommendedDocListview()
          ],
        ),
      ),
    );
  }
}