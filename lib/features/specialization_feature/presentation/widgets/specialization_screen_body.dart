import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'specialization_list_view.dart';


class SpecializationScreenBody extends StatelessWidget {
  const SpecializationScreenBody({super.key});

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
