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
            return  const RecommendDocListviewItem(
                img: 'https://media.istockphoto.com/id/1922549572/photo/portrait-of-young-female-doctor-thinking.jpg?s=1024x1024&w=is&k=20&c=4lviwdg384zsZXU2J7Eex3G29PcoApNb9FjeDQEWlQo=',
                name: 'Dr. John Doe',
                email: 'a@example.com',
                speciality: 'General | 01234565'
            );
          }),
    );
  }
}
