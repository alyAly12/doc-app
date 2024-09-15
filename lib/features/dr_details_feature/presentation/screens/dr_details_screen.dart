
import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/helper/extenstions.dart';
import 'package:doc_app/features/dr_details_feature/presentation/widgets/dr_details_screen_body.dart';
import 'package:flutter/material.dart';

class DrDetailsScreen extends StatelessWidget {
  const DrDetailsScreen({super.key, required this.name, required this.img, required this.email, required this.speciality});
final String name;
  final String img;
  final String email;
  final String speciality;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(title: name),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          context.pop();
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: DrDetailsScreenBody(name: name, img: img, email: email, speciality: speciality,),
    );
  }
}
