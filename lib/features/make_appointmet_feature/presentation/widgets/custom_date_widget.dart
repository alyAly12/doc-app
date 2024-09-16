import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/utils/app_colors.dart';
import 'package:doc_app/core/utils/app_strings.dart';
import 'package:doc_app/features/make_appointmet_feature/presentation/widgets/available_time_list_item.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CustomDateWidget extends StatefulWidget {
  const CustomDateWidget({super.key, this.availableDates});

  final List<DateTime>? availableDates;

  @override
  State<CustomDateWidget> createState() => _CustomDateWidgetState();
}

class _CustomDateWidgetState extends State<CustomDateWidget> {
  DateTime? selectedDate;



  void showTimeDialog( BuildContext context ) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return  const AlertDialog(
            contentPadding: EdgeInsets.all(8),
            title: CustomTextWidget(title: AppStrings.available),
            content: SizedBox(
              height: 400,
              width: 300,
              child: AvailableTimeListItem(),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      selectionColor: AppColors.mainColor,
      todayHighlightColor: AppColors.mainColor ,
      selectionMode: DateRangePickerSelectionMode.single,
      initialSelectedDates: [
        DateTime.now(),
      ],
      view: DateRangePickerView.month,
      onSelectionChanged: (dateRangePickerSelectionChangedArgs) {
        setState(() {
          selectedDate = dateRangePickerSelectionChangedArgs.value;
          showTimeDialog(context);
          print(selectedDate);




        });
      },
      // cellBuilder: (BuildContext context, DateRangePickerCellDetails details) {
      //   if (widget.availableDates!.contains(details.date)) {
      //     return Container(
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //       ),
      //       child: Center(
      //         child: Text(
      //           DateFormat('yyyy-MM-dd').format(details.date),
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ),
      //     );
      //   } else {
      //     return SizedBox.shrink();
      //   }
      // }
    );
  }
}
