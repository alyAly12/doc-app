import 'package:doc_app/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';


class UserNameAndImage extends StatelessWidget {
  const UserNameAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
          CircleAvatar(
          radius: 55,
          backgroundColor:Colors.white,
          child: CircleAvatar(
            radius: 48,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(AssetsManager.doctor),
          ),
        ),
        SizedBox(width: 10.w,),
         const Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             CustomTextWidget(title: 'Name',fontSize: 30,color: Colors.white,),
             CustomTextWidget(title: 'example@email.com',fontSize: 15,color: Colors.white,),

           ],
         ),
      ],
    );
  }
}