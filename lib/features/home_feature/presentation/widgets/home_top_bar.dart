import 'package:doc_app/core/common_bloc/theme_bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    // bool isChangeTheme = BlocProvider.of<ThemesCubit>(context).state is ThemesDarkState ? true : false;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  children: [
                    TextSpan(
                      text:'Hello ',
                      style: TextStyle(
                          color: AppColors.lightTitleColor,
                          fontSize: 18.sp),
                    ),
                    TextSpan(
                      text: 'Aly',
                      style: TextStyle(
                          color: AppColors.mainColor, fontSize: 20.sp),
                    ),
                  ]),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomTextWidget(
              title: 'How are you today?',
              color: AppColors.lightTitleColor,
              fontSize: 12.sp,
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            Badge(
                backgroundColor: AppColors.deepRed,
                smallSize: 16.h,
                largeSize: 20.h,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 0.h),
                label: Text('0', style: TextStyle(fontSize: 10.sp),),
                child: Icon(
                  Icons.notifications_none,
                  size: 30.h,
                  color: AppColors.lightTitleColor,
                )
            ),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return Switch(
                  activeColor: AppColors.mainColor,
                    inactiveThumbColor: AppColors.mainColor,
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.white,
                    value: state.themeValue,
                    onChanged: (value){
                      value ?context.read<ThemeBloc>().add(LightThemeEvent()) :context.read<ThemeBloc>().add(DarkThemeEvent());
                    }
                );
              },
            )
          ],
        )
      ],
    );
  }
}