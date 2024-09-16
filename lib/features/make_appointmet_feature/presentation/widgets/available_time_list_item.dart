import 'package:doc_app/features/make_appointmet_feature/presentation/widgets/availabe_time_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableTimeListItem extends StatefulWidget {
  const AvailableTimeListItem({
    super.key,
  });

  @override
  State<AvailableTimeListItem> createState() => _AvailableTimeListItemState();
}

class _AvailableTimeListItemState extends State<AvailableTimeListItem> {
  var selectedTimeIndex = 0;

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
