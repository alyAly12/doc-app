import 'package:doc_app/features/dr_details_feature/presentation/widgets/custom_tabbar.dart';
import 'package:doc_app/features/dr_details_feature/presentation/widgets/dr_detail_card.dart';
import 'package:flutter/material.dart';


class DrDetailsScreenBody extends StatelessWidget {
  const DrDetailsScreenBody({super.key,  required this.img,  required this.name,  required this.email,  required this.speciality});
  final String img;
  final String name;
  final String email;
  final String speciality;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrDetailCard(img: img, name: name, email: email, speciality: speciality),
        const CustomTabBar(),
      ],
    );
  }
}

