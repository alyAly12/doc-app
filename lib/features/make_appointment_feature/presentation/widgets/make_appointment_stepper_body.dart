import 'package:doc_app/core/common_widgets/custom_button.dart';
import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/utils/app_colors.dart';
import 'package:doc_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'date_and_time_step.dart';

class MakeAppointmentWithStepperBody extends StatefulWidget {
  const MakeAppointmentWithStepperBody({super.key});

  @override
  State<MakeAppointmentWithStepperBody> createState() => _MakeAppointmentWithStepperBodyState();
}

class _MakeAppointmentWithStepperBodyState extends State<MakeAppointmentWithStepperBody> {
  int currentStep = 0;
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      Step(
        isActive: currentStep >= 0,
        stepStyle: const StepStyle(color: AppColors.mainColor),
        state: currentStep == 0 ? StepState.indexed : StepState.complete,
        title: const CustomTextWidget(
          title: AppStrings.selectDate,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
        content: const DateAndTimeStep(),
      ),
      Step(
        stepStyle: const StepStyle(color: AppColors.mainColor),
        isActive: currentStep >= 1,
        state: StepState.indexed,
        title: const CustomTextWidget(
          title: AppStrings.summary,
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
        content: Column(),
      ),
    ];
    return isCompleted ? Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.red,
    ) : Stepper(
        elevation: 0,
        type: StepperType.horizontal,
        steps: steps,
        currentStep: currentStep,
        onStepContinue: () {
          final lastStep = currentStep == steps.length - 1;
          if (lastStep) {
           setState(() {
             isCompleted=true;

           });
            /// send data to server

            return;
          }
          setState(() {
            currentStep += 1;
          });
        },
        onStepCancel: () {
          currentStep == 0
              ? null
              : setState(() {
                  currentStep -= 1;
                });
        },
        controlsBuilder: (context, details) {
          final isLastStep = currentStep == steps.length - 1;
          return Container(
            margin: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                      onPressed: details.onStepContinue,
                      title:isLastStep ? AppStrings.confirm : AppStrings.next,
                      showIcon: false),
                ),
                SizedBox(
                  width: 12.w,
                ),
                if (currentStep != 0)
                  Expanded(
                    child: CustomButton(
                        onPressed: details.onStepCancel,
                        title: AppStrings.back,
                        showIcon: false),
                  ),
              ],
            ),
          );
        });
  }
}
