import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/helper/extenstions.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';


class SpecialityScreen extends StatelessWidget {
  final String title;
  const SpecialityScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){context.pop();},
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: CustomTextWidget(title: title,color: AppColors.mainColor, fontWeight: FontWeight.w500,),
      ),
    );
  }
}
