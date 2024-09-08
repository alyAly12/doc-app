import 'package:flutter/material.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class AppointAndRecordRow extends StatelessWidget {
  const AppointAndRecordRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
          flex: 1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide.none)),
            onPressed: () {},
            child: const CustomTextWidget(
              title: AppStrings.myAppointments,
              color: AppColors.greyColor,
              fontSize: 15,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide.none)),
            onPressed: () {},
            child: const CustomTextWidget(
              title: AppStrings.medicalRecords,
              color: AppColors.greyColor,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
