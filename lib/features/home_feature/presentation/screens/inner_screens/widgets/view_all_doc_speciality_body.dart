import 'package:doc_app/features/home_feature/presentation/screens/inner_screens/widgets/specialization_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewAllDocSpecialityBody extends StatelessWidget {
  const ViewAllDocSpecialityBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 30.h),
      child: const Column(
        children: [
          Expanded(
            child: SpecializationListView(),
          ),
        ],
      ),
    );
  }
}
