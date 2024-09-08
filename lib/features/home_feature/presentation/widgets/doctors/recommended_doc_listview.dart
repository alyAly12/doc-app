import 'package:doc_app/features/home_feature/presentation/widgets/doctors/recommanded_doc_listview_items.dart';
import 'package:flutter/material.dart';

class RecommendedDocListview extends StatelessWidget {
  const RecommendedDocListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const RecommendDocListviewItem();
          }),
    );
  }
}
