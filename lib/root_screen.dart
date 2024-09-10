import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'core/utils/app_colors.dart';
import 'core/utils/assets_manager.dart';
import 'features/calendar_feature/presentation/screens/calendar_screen.dart';
import 'features/home_feature/presentation/screens/home_screen.dart';
import 'features/profile_feature/presentation/screens/profile_screen.dart';
import 'features/search_feature/presentation/screens/search_screen.dart';
import 'features/support_feature/presentation/screens/support_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController controller;
  int currentScreen = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const SupportScreen(),
    const SizedBox.shrink(),
    const CalendarScreen(),
    const ProfileScreen(),
  ];
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 70.w,
        height: 70.h,
        child:  Padding(
          padding:  EdgeInsets.only(bottom: 1.h),
          child: FloatingActionButton(

            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
            },
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            backgroundColor: AppColors.mainColor,
            child: SvgPicture.asset(
              AssetsManager.searchImage,
              height: 32.h,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(

          elevation: 0,
          selectedFontSize: 18.sp,
          unselectedFontSize: 15.sp,
          selectedItemColor: AppColors.mainColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentScreen,
          onTap: (int index){
            setState(() {
              currentScreen = index;
            });
            controller.jumpToPage(index);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Support'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarms_rounded,
                size: 0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Calendar'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}