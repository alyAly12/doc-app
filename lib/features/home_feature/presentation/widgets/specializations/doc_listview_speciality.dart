import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doc_listview_speciality_item.dart';

class DocListviewSpeciality extends StatefulWidget {
  const DocListviewSpeciality({
    super.key,
  });

  @override
  State<DocListviewSpeciality> createState() => _DocListviewSpecialityState();
}

class _DocListviewSpecialityState extends State<DocListviewSpeciality> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSpecializationIndex = index;
                });
              },
              child: DocListviewSpecialityItem(
                itemIndex: index,
                selectedIndex: selectedSpecializationIndex,
              ),
            );
          }),
    );
  }
}
