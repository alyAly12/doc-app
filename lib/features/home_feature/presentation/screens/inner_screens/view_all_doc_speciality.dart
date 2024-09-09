import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/helper/extenstions.dart';
import 'package:doc_app/core/utils/app_colors.dart';
import 'package:doc_app/core/utils/app_strings.dart';
import 'package:doc_app/features/home_feature/presentation/screens/inner_screens/widgets/view_all_doc_speciality_body.dart';
import 'package:flutter/material.dart';

class ViewAllDocSpeciality extends StatelessWidget {
  const ViewAllDocSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const CustomTextWidget(
          title: AppStrings.docSpecialist,
          color: AppColors.mainColor,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: const ViewAllDocSpecialityBody(),
    );
  }
}
