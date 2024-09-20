import 'package:doc_app/features/specialization_feature/presentation/widgets/specialization_screen_body.dart';
import 'package:flutter/material.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class SpecializationScreen extends StatelessWidget {
  const SpecializationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  const CustomTextWidget(
          title: AppStrings.docSpecialist,
          color: AppColors.mainColor,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: const SpecializationScreenBody(),
    );
  }
}
