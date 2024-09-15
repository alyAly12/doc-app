import 'package:doc_app/core/common_widgets/custom_text_widget.dart';
import 'package:doc_app/core/utils/app_colors.dart';
import 'package:doc_app/features/dr_details_feature/presentation/widgets/tabs_screen_widgets/about_tab.dart';
import 'package:doc_app/features/dr_details_feature/presentation/widgets/tabs_screen_widgets/location_tab.dart';
import 'package:doc_app/features/dr_details_feature/presentation/widgets/tabs_screen_widgets/review_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key,});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>with SingleTickerProviderStateMixin{
  List<Widget> tabsScreens =const [
    AboutTab(),
    LocationTab(),
    ReviewTab()
  ];

  late TabController _tabController;
  @override
  void initState() {
    _tabController =  TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height /1.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TabBar(
              unselectedLabelColor: AppColors.lightTitleColor,
              labelColor: AppColors.mainColor,
              indicatorColor: AppColors.mainColor,
              tabs:[
                Tab(
                  child: CustomTextWidget(title: 'About',fontSize: 16.sp,),
                ),
                Tab(
                  child: CustomTextWidget(title: 'Location',fontSize: 16.sp,),
                ),
                Tab(
                  child: CustomTextWidget(title: 'Reviews',fontSize: 16.sp,),
                ),
              ] ,
            controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(child: TabBarView(controller: _tabController,children: tabsScreens,))
        ],
      ),
    );
  }
}
