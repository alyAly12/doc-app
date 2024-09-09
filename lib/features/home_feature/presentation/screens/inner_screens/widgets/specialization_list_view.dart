import 'package:doc_app/features/home_feature/presentation/screens/inner_screens/widgets/special_fake_model.dart';
import 'package:doc_app/features/home_feature/presentation/screens/inner_screens/widgets/specialization_list_item.dart';
import 'package:flutter/material.dart';

class SpecializationListView extends StatefulWidget {
  const SpecializationListView({super.key});

  @override
  State<SpecializationListView> createState() => _SpecializationListViewState();
}

class _SpecializationListViewState extends State<SpecializationListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: SpecialFakeModel.specialityFakeList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10),
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
                imagePath: SpecialFakeModel.specialityFakeList[index].image),
          );
        });
  }
}
