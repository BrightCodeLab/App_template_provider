import 'package:app_template/core/enums/view_state.dart';
import 'package:app_template/core/view_model/base_view_model.dart';
import 'package:app_template/ui/screens/home/home_screen.dart';
import 'package:app_template/ui/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class RootViewModel extends BaseViewModal {
  final PageController pageController = PageController(initialPage: 0);
  RootViewModel(val) {
    updatedScreen(val);
    notifyListeners();
  }
  int selectedScreen = 0;
  // int selectIndex = 0;

  List<Widget> allScreen = [
    HomeScreen(),
    ProfileScreen(),
  ];

  updatedScreen(int index) {
    setState(ViewState.busy);
    selectedScreen = index;
    setState(ViewState.idle);
    // selectIndex = index;
    notifyListeners();
  }

  // pushScreen(int index) {
  //   pageController.animateToPage(index,
  //       duration: Duration(milliseconds: 2000), curve: Curves.bounceIn);
  //   selectedScreen = index;
  //   notifyListeners();
  // }
}
