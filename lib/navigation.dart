import 'package:demo_1/common.dart';
import 'package:demo_1/home.dart';
import 'package:flutter/material.dart';
import 'package:bottom_nav_bar/persistent-tab-view.dart';

class BottomNavView extends StatefulWidget {
  @override
  _BottomNavViewState createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
    MyHomePage(),
  ];
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        inactiveColorPrimary: Colors.grey,
        iconSize: 26,
        textStyle: kTextConfig.copyWith(fontSize: 14),
        icon: Icon(
          Icons.home,
        ),
        activeColorPrimary: Colors.blue,
        title: ("Home"),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: Colors.grey,
        iconSize: 28,
        icon: Icon(
          Icons.explore,
        ),
        textStyle: kTextConfig.copyWith(fontSize: 14),
        activeColorPrimary: Colors.blue,
        title: ("Explore"),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: Colors.grey,
        icon: Icon(
          Icons.search,
        ),
        iconSize: 26,
        textStyle: kTextConfig.copyWith(fontSize: 14),
        activeColorPrimary: Colors.blue,
        title: ("Search"),
      ),
      PersistentBottomNavBarItem(
        inactiveColorPrimary: Colors.grey,
        icon: Icon(
          Icons.settings,
        ),
        iconSize: 26,
        textStyle: kTextConfig.copyWith(fontSize: 14),
        activeColorPrimary: Colors.blue,
        title: ("Setting"),
      ),
    ];
  }

  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PersistentTabView(
        this.context,
        controller: _controller,
        screens: _widgetOptions,
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }
}
