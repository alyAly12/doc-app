import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';

class RatingValue extends StatelessWidget {
  const RatingValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star,color: Colors.amber,size: 18,),
        SizedBox(width: 10.w,),
        CustomTextWidget(title: '4.5',fontSize: 14.sp,),
        SizedBox(width: 10.w,),
        CustomTextWidget(title: '(100 reviews)',fontSize: 14.sp,),
      ],
    );
  }
}