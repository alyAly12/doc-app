// import 'package:doc_app/core/common_bloc/themes_cubit.dart';
// import 'package:doc_app/core/helper/theme_enum.dart';
// import 'package:doc_app/core/utils/app_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import '../../../../core/common_widgets/custom_text_widget.dart';
// import '../../../../core/utils/assets_manager.dart';
//
//
// class CustomThemeRow extends StatelessWidget {
//   const CustomThemeRow({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//         return SwitchListTile(
//           activeColor: AppColors.whiteColor,
//             inactiveThumbColor: AppColors.mainColor,
//             inactiveTrackColor: Colors.white,
//             activeTrackColor: AppColors.mainColor,
//             title:  CustomTextWidget(
//               title: 'Light Theme',
//                 fontSize: 18
//             ),
//             secondary: Image.asset(
//               AssetsManager.theme,
//               height: 30,
//             ),
//             value: BlocProvider.of<ThemesCubit>(context).state is ThemesDarkState ? true : false,
//             onChanged: (value) {
//               BlocProvider.of<ThemesCubit>(context).changeTheme(value ? ThemeEnum.dark : ThemeEnum.light, context);
//             });
//   }
// }
//
//
//
