import 'package:doc_app/core/rive_models/nav_item_model.dart';
import 'package:doc_app/core/utils/app_colors.dart';
import 'package:doc_app/features/search_feature/presentation/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'core/common_widgets/animated_bar.dart';
import 'features/calendar_feature/presentation/screens/calendar_screen.dart';
import 'features/home_feature/presentation/screens/home_screen.dart';
import 'features/profile_feature/presentation/screens/profile_screen.dart';
import 'features/support_feature/presentation/screens/support_screen.dart';

class BottomNavAnimatedScreen extends StatefulWidget {
  const BottomNavAnimatedScreen({super.key});

  @override
  State<BottomNavAnimatedScreen> createState() =>
      _BottomNavAnimatedScreenState();
}

class _BottomNavAnimatedScreenState extends State<BottomNavAnimatedScreen> {
  List<Widget> screens = [
    const HomeScreen(),
    const SupportScreen(),
    const SearchScreen(),
    const CalendarScreen(),
    const ProfileScreen(),
  ];
  late PageController controller;

  List<SMIBool> riveIconInputs = [];
  int selectedNavIndex = 0;
  List<StateMachineController?> controllers = [];

  void animateTheIcon(int index) {
    riveIconInputs[index].change(true);
    Future.delayed(const Duration(seconds: 1), () {
      riveIconInputs[index].change(false);
    });
  }

  void riveOnInit(Artboard artBoard, {required String stateMachineName}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artBoard, stateMachineName);
    artBoard.addController(controller!);
    controllers.add(controller);
    riveIconInputs.add(controller.findInput<bool>('active') as SMIBool);
  }

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller?.dispose();
    }
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: AppColors.mainColor.withOpacity(0.8),
          borderRadius: const BorderRadius.only(
           topRight: Radius.circular(12.0),
            topLeft: Radius.circular(12.0),
          ),
          // boxShadow: [
          //   BoxShadow(
          //       color: AppColors.mainColor.withOpacity(0.3),
          //       offset: const Offset(0, 20),
          //       blurRadius: 45.0),
          // ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomNavItems.length, (index) {
            final riveIcon = bottomNavItems[index].rive;
            return GestureDetector(
              onTap: () {
                animateTheIcon(index);
                setState(() {
                  controller.jumpToPage(index);
                  selectedNavIndex = index;
                  controller == selectedNavIndex;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedBar(
                    isActive: selectedNavIndex == index,
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: Opacity(
                      opacity: selectedNavIndex == index ? 1.0 : 0.7,
                      child: RiveAnimation.asset(
                        riveIcon.src,
                        artboard: riveIcon.artBoard,
                        onInit: (artBoard) {
                          riveOnInit(artBoard,
                              stateMachineName: riveIcon.stateMachineName);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
