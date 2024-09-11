import 'package:doc_app/core/rive_models/rive_model.dart';

class NavItemModel {
  final String title;
  final RiveModel rive;

  NavItemModel({required this.title, required this.rive});
}

List<NavItemModel> bottomNavItems = [
  NavItemModel(
      title: 'Home',
      rive: RiveModel(
          artBoard: 'HOME',
          stateMachineName: 'HOME_interactivity',
          src: 'assets/riv_animations/animated_icon.riv')),
  NavItemModel(
      title: 'Chat',
      rive: RiveModel(
          artBoard: 'CHAT',
          stateMachineName: 'CHAT_Interactivity',
          src: 'assets/riv_animations/animated_icon.riv')),
  NavItemModel(
      title: 'Search',
      rive: RiveModel(
          artBoard: 'SEARCH',
          stateMachineName: 'SEARCH_Interactivity',
          src: 'assets/riv_animations/animated_icon.riv')),
  NavItemModel(
      title: 'Timer',
      rive: RiveModel(
          artBoard: 'TIMER',
          stateMachineName: 'TIMER_Interactivity',
          src: 'assets/riv_animations/animated_icon.riv')),
  NavItemModel(
      title: 'Profile',
      rive: RiveModel(
          artBoard: 'USER',
          stateMachineName: 'USER_Interactivity',
          src: 'assets/riv_animations/animated_icon.riv')),
];
