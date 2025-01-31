import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';

class UserDetailRows extends StatelessWidget {
  const UserDetailRows({super.key, required this.title, required this.image, this.onTap});
  final String title;
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SizedBox(
              height: 50.h,
              width: 50.w,
              child: Image.asset(image)),
          SizedBox(width: 10.w,),
          CustomTextWidget(title:title,fontSize: 18,color: Colors.white, )
        ],
      ),
    );
  }
}
