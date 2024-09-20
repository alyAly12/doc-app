import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/helper/extenstions.dart';
import 'package:doc_app/features/make_appointment_feature/presentation/widgets/make_appoint_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MakeAppointmentScreen extends StatelessWidget {
  const MakeAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: CustomTextWidget(
          title: 'Book Appointment',
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: const MakeAppointBody(),
    );
  }
}
