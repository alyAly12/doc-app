import 'package:doc_app/core/common_widgets/custom_button.dart';
import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/helper/extenstions.dart';
import 'package:doc_app/core/utils/app_colors.dart';
import 'package:doc_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import 'package:weekly_date_picker/weekly_date_picker.dart';

import 'available_time_list_item.dart';

// class CustomDateWidget extends StatefulWidget {
//   const CustomDateWidget({super.key, this.availableDates});
//
//   final List<DateTime>? availableDates;
//
//   @override
//   State<CustomDateWidget> createState() => _CustomDateWidgetState();
// }
//
// class _CustomDateWidgetState extends State<CustomDateWidget> {
//   DateTime? selectedDate;
//
//
//
//   void showTimeDialog( BuildContext context ) {
//     showDialog(
//         barrierDismissible: true,
//         context: context,
//         builder: (context) {
//           return  const AlertDialog(
//             contentPadding: EdgeInsets.all(8),
//             title: CustomTextWidget(title: AppStrings.available),
//             content: SizedBox(
//               height: 400,
//               width: 300,
//               child: AvailableTimeListItem(),
//             ),
//           );
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SfDateRangePicker(
//       selectionColor: AppColors.mainColor,
//       todayHighlightColor: AppColors.mainColor ,
//       selectionMode: DateRangePickerSelectionMode.single,
//       initialSelectedDates: [
//         DateTime.now(),
//       ],
//       view: DateRangePickerView.month,
//       onSelectionChanged: (dateRangePickerSelectionChangedArgs) {
//         setState(() {
//           selectedDate = dateRangePickerSelectionChangedArgs.value;
//           showTimeDialog(context);
//           print(selectedDate);
//
//
//
//
//         });
//       },
//       // cellBuilder: (BuildContext context, DateRangePickerCellDetails details) {
//       //   if (widget.availableDates!.contains(details.date)) {
//       //     return Container(
//       //       decoration: BoxDecoration(
//       //         color: Colors.grey,
//       //       ),
//       //       child: Center(
//       //         child: Text(
//       //           DateFormat('yyyy-MM-dd').format(details.date),
//       //           style: TextStyle(color: Colors.white),
//       //         ),
//       //       ),
//       //     );
//       //   } else {
//       //     return SizedBox.shrink();
//       //   }
//       // }
//     );
//   }
// }


class WeeklySelectedDate extends StatefulWidget {
  const WeeklySelectedDate({super.key,});

  @override
  State<WeeklySelectedDate> createState() => _WeeklySelectedDateState();
}

class _WeeklySelectedDateState extends State<WeeklySelectedDate> {
  int _selectedTimeIndex = 0;
  void onTimeSelected(int selectedTimeIndex) {
    setState(() {
      _selectedTimeIndex = selectedTimeIndex;// (Optional)
    });
  }
/// time dialog
  void showTimeDialog( BuildContext context ) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return    AlertDialog(
            contentPadding: const EdgeInsets.all(8),
            title: const CustomTextWidget(title: AppStrings.available),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 SizedBox(
                  height: 400,
                  width: 300,
                  child: AvailableTimeListItem(onTimeSelected: onTimeSelected,),
                ),
                CustomButton(onPressed: (){
                  print('yes passed ${_selectedTimeIndex}');
                  context.pop();
                },
                    title: AppStrings.confirm,
                    showIcon: false)
              ],
            ),
          );
        });
  }
/// week calendar
  DateTime _selectedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WeeklyDatePicker(
        selectedDay: _selectedDay,
        changeDay: (value)=>setState(() {
          _selectedDay=value;
          showTimeDialog(context);

        }),
      enableWeeknumberText: false,
      selectedDigitBackgroundColor: AppColors.mainColor,
      weekdays: const ["Mo", "Tu", "We", "Th", "Fr","Sa","Su"],
      daysInWeek: 7,
    );
  }

}
