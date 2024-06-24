import 'package:all_flutter_work/view/bottem_bar_screens/simple_bottom_bar/menu_screen.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/simple_bottom_bar/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bottem_bar_screens/simple_bottom_bar/home_screen.dart';
import '../../bottem_bar_screens/simple_bottom_bar/pay_screen.dart';
import '../../bottem_bar_screens/simple_bottom_bar/profile_screen.dart';
import '../../bottem_bar_screens/simple_bottom_bar/trade_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Drawer Widget"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        width: 200,
        child: ListView(
          children: [
            DrawerHeader(child: Center(child: Text("Drawer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
             ListTile(
               leading: Image.asset("assets/images/bot1.png"),
               title: Text("Home"),
               onTap: (){
                 Get.to(HomeScreen());
               },
             ),
             ListTile(
               leading: Image.asset("assets/images/bot2.png"),
               title: Text("Trade"),
               onTap: (){
                 Get.to(TradeScreen());
               },
             ),
             ListTile(
               leading: Image.asset("assets/images/bot3.png"),
               title: Text("Wallet"),
               onTap: (){
                 Get.to(WalletScreen());
               },
             ),
             ListTile(
               leading: Image.asset("assets/images/bot4.png"),
               title: Text("Profile"),
               onTap: (){
                 Get.to(ProfileScreen());
               },
             ),
             ListTile(
               leading: Image.asset("assets/images/bot5.png"),
               title: Text("C/Pay"),
               onTap: (){
                 Get.to(PayScreen());
               },
             ),
             ListTile(
               leading: Image.asset("assets/images/bot6.png"),
               title: Text("Menu"),
               onTap: (){
                 Get.to(MenuScreen());
               },
             ),
          ],
        ),
      ),
    );
  }
}
