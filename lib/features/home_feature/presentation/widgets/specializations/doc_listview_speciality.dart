import 'package:doc_app/features/specialization_feature/presentation/widgets/specialization_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../specialization_feature/presentation/widgets/special_fake_model.dart';

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
              child: SpecializationListItem(
                  itemIndex: index,
                  selectedIndex: selectedSpecializationIndex,
                  title: SpecialFakeModel.specialityFakeList[index].name,
                  imagePath: SpecialFakeModel.specialityFakeList[index].image,
              ),
            );
          }),
    );
  }
}
