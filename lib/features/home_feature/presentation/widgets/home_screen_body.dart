import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/features/home_feature/presentation/widgets/doctors/recommended_doc_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doctor_blue_banner.dart';
import 'home_top_bar.dart';


class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
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
            CustomTextWidget(title: 'Our Doctors', fontSize: 20.sp,),
            SizedBox(height: 16.h,),
            const RecommendedDocListview()
          ],
        ),
      ),
    );
  }
}


