import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/assets_manager.dart';


class CustomRadioList extends StatefulWidget {
  const CustomRadioList({super.key});

  @override
  State<CustomRadioList> createState() => _CustomRadioListState();
}
List<String> appointType =['Phone Call', 'At Clinic'];
class _CustomRadioListState extends State<CustomRadioList> {
  String currentOption = appointType[0];
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          title: CustomTextWidget(title: appointType[0]),
          leading: SvgPicture.asset(AssetsManager.phone,height: 35.h),
          trailing: Radio<String>(
            value: appointType[0],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            },
          ),
        ),
        ListTile(
          title: CustomTextWidget(title: appointType[1]),
          leading: SvgPicture.asset(AssetsManager.inPerson,height: 35.h),
          trailing: Radio<String>(
            value: appointType[1],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {
                currentOption = value.toString();
              });
            },
          ),
        ),
      ],
    );
  }
}
