import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_bloc/themes_cubit.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';


class UserNameAndImage extends StatelessWidget {
  const UserNameAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const CircleAvatar(
              radius: 55,
              backgroundColor:Colors.white,
              child: CircleAvatar(
                radius: 48,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://plus.unsplash.com/premium_photo-1658506671316-0b293df7c72b?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
            ),
            SizedBox(width: 10.w,),
             CustomTextWidget(title: 'Name',color:BlocProvider.of<ThemesCubit>(context).state is ThemesDarkState? Colors.white: AppColors.greyColor,fontSize: 30,),
          ],
        ),
          Align(
            alignment: Alignment.center,
            child: CustomTextWidget(title: 'example@email.com',color:BlocProvider.of<ThemesCubit>(context).state is ThemesDarkState? Colors.white: AppColors.lightTitleColor,fontSize: 15,)),
      ],
    );
  }
}