import 'package:flutter/material.dart';

import '../../widget/custom_tab.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text("Tabbar Widget"),
        ),
        body: Column(
          children:  [
            const TabBar(tabs: [
              Tab(icon: Icon(Icons.home,color: Colors.cyanAccent,),),
              Tab(icon: Icon(Icons.settings,color: Colors.orangeAccent,),),
              Tab(icon: Icon(Icons.person,color: Colors.lightGreenAccent,),),
            ],),
            Expanded(
              child: TabBarView(children: [
                CustomTab(name: "MY APP",color: Colors.white,),
                CustomTab(name: "MY APP",color: Colors.white,),
                CustomTab(name: "MY APP",color: Colors.white,),
              ]),
            ),

          ],
        ),


      ),
    );
  }
}
