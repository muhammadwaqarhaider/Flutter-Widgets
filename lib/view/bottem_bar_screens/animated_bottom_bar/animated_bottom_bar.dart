import 'package:all_flutter_work/view/bottem_bar_screens/animated_bottom_bar/favourit_page.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/animated_bottom_bar/home_page.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/animated_bottom_bar/prifile_page.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/animated_bottom_bar/search_page.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/animated_bottom_bar/setting_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  const AnimatedBottomBar({Key? key}) : super(key: key);

  @override
  State<AnimatedBottomBar> createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  int index = 2;
  @override
  final screens = [
    HomePage(),
    SearchPage(),
    FavouritPage(),
    SettingPage(),
    ProfilePage(),
  ];
  Widget build(BuildContext context) {
    final items=[
      Icon(Icons.home,size: 30,),
      Icon(Icons.search,size: 30,),
      Icon(Icons.favorite,size: 30,),
      Icon(Icons.settings,size: 30,),
      Icon(Icons.person,size: 30,),
    ];
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.cyan,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text("Animated Bottom Bar"),
        ),
        body: screens[index],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
          ),
          child: CurvedNavigationBar(
            buttonBackgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 500),
            backgroundColor: Colors.cyan,
            color: Colors.white,
            height: 55,
            index: index,
            items: items,
            onTap: (index) => setState(() =>this.index = index),
          ),
        ),
      ),
    );
  }
}
