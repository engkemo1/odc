import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc/views/Profile.dart';
import 'package:odc/views/Catigories.dart';
import 'package:odc/views/Courses/MyCourses.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../Utils/constants.dart';
import '../views/Authentication/LogIn.dart';
import '../views/HomeScreen.dart';
class NavBar extends StatelessWidget {
  static const routeName = "/nav_bar";

  PersistentTabController? _controller;

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      MyCourses(),
      Profile(),

    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: ColorHelp.orange,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.book),
        activeColorPrimary: ColorHelp.orange,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        activeColorPrimary: ColorHelp.orange,
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12
      , // Choose the nav bar style with this property.
    );
  }
}
