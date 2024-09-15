import 'package:doc_app/features/dr_details_feature/presentation/widgets/rating_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';


class DrDetailCard extends StatelessWidget {
  const DrDetailCard({super.key, required this.img, required this.name, required this.email, required this.speciality});
  final String img;
  final String name;
  final String email;
  final String speciality;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 25.h),
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                img,
                width: 110.w,
                height: 120.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    title: name,
                    fontSize: 14.sp,

                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomTextWidget(
                    title: speciality,
                    fontSize: 14.sp,

                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const RatingValue()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
