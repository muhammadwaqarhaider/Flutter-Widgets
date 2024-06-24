
import 'package:all_flutter_work/view/bottem_bar_screens/simple_bottom_bar/menu_screen.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/simple_bottom_bar/pay_screen.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/simple_bottom_bar/profile_screen.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/simple_bottom_bar/trade_screen.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/simple_bottom_bar/wallet_screen.dart';
import 'package:flutter/material.dart';
import '../../../../model/utils/images.dart';
import '../../widget/custom_bottombar.dart';
import 'home_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int active=1;
  List screens=[HomeScreen(),TradeScreen(),WalletScreen(),ProfileScreen(),PayScreen(),MenuScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text(" BottomNavigationBar"),
        ),
        bottomNavigationBar: Container(
          color: Colors.cyan,
        height: 60,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                CustomBottombar(
                  title: "Home",
                  imagepath: Images.bot1,
                  isActive: active==1?true:false,
                  onTap: (){
                    active=1;
                    setState(() {
                    });
                  },
                ),
                CustomBottombar(
                    title: "Trade",
                    imagepath: Images.bot2,
                  isActive: active==2?true:false,
                  onTap: (){
                    active=2;
                    setState(() {
                    });
                  },
                ),
                CustomBottombar(
                    title: "WaLLet",
                    imagepath: Images.bot3,
                  isActive: active==3?true:false,
                  onTap: (){
                      active=3;
                      setState(() {
                      });
                  },
                ),
                CustomBottombar(
                    title: "Profile",
                    imagepath: Images.bot4,
                  isActive: active==4?true:false,
                  onTap: (){
                    active=4;
                    setState(() {
                    });
                  },
                ),
                CustomBottombar(
                    title: "C/Pay",
                    imagepath: Images.bot5,
                  isActive: active==5?true:false,
                  onTap: (){
                    active=5;
                    setState(() {
                    });
                  },
                ),
                CustomBottombar(
                    title: "Menu",
                    imagepath: Images.bot6,
                  isActive: active==6?true:false,
                  onTap: (){
                    active=6;
                    setState(() {
                    });
                  },
                ),
              ],
            )

          ],
        ),
      ),
        body: screens[active-1]

    );
  }
}
