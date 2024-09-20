import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'availabe_time_item.dart';

class AvailableTimeListItem extends StatefulWidget {
  const AvailableTimeListItem({
    super.key, required this.onTimeSelected,
  });
  final Function(int) onTimeSelected;
  @override
  State<AvailableTimeListItem> createState() => _AvailableTimeListItemState();
}
var selectedTimeIndex = 0;
class _AvailableTimeListItemState extends State<AvailableTimeListItem> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedTimeIndex = index;
                widget.onTimeSelected(selectedTimeIndex);
                print(selectedTimeIndex);
              });
            },
            child: AvailableTimeItem(
              itemIndex: index,
              selectedIndex: selectedTimeIndex,
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 5.h,
          );
        },
      ),
    );
  }
}
