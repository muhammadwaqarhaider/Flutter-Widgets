import 'package:all_flutter_work/view/bottem_bar_screens/animated_bottom_bar/animated_bottom_bar.dart';
import 'package:all_flutter_work/view/bottem_bar_screens/simple_bottom_bar/bottom_screen.dart';
import 'package:all_flutter_work/view/screens/home/alert_dialog.dart';
import 'package:all_flutter_work/view/screens/home/all_flutter_butten.dart';
import 'package:all_flutter_work/view/screens/home/animated_border.dart';
import 'package:all_flutter_work/view/screens/home/kat_app.dart';
import 'package:all_flutter_work/view/screens/home/container_widget.dart';
import 'package:all_flutter_work/view/screens/home/date_time_piker.dart';
import 'package:all_flutter_work/view/screens/home/drawer_widget.dart';
import 'package:all_flutter_work/view/screens/home/percentage.dart';
import 'package:all_flutter_work/view/screens/home/position_screen.dart';
import 'package:all_flutter_work/view/screens/home/print_name.dart';
import 'package:all_flutter_work/view/screens/home/image_piker.dart';
import 'package:all_flutter_work/view/screens/home/listtile_widget.dart';
import 'package:all_flutter_work/view/screens/home/row_column_widget.dart';
import 'package:all_flutter_work/view/screens/home/tabbar_widget.dart';
import 'package:all_flutter_work/view/screens/home/text_widget.dart';
import 'package:all_flutter_work/view/screens/home/textfield_widget.dart';
import 'package:all_flutter_work/view/screens/home/triangle.dart';
import 'package:all_flutter_work/view/screens/home/url_launcher.dart';
import 'package:all_flutter_work/view/screens/home/zahid.dart';
import 'package:all_flutter_work/view/widget/custom_butten.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animated_butten.dart';


class FlutterWidgets extends StatelessWidget {
  const FlutterWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:PreferredSize(
      //   preferredSize: Size.fromHeight(73),
      //   child:Column(
      //     children: [
      //       SizedBox(height: 30,),
      //       Container(
      //         height: 70,
      //         margin: EdgeInsets.symmetric(horizontal: 10),
      //         decoration: BoxDecoration(
      //             color: Colors.white,
      //             // gradient: LinearGradient(
      //             //     begin:
      //             //     Alignment.centerRight,
      //             //     end: Alignment.centerLeft,
      //             //     colors: [Colors.lightBlueAccent,Colors.lightGreenAccent,]),
      //             //gradient: LinearGradient(colors: [Colors.orange,Colors.pinkAccent,Colors.red,Colors.yellowAccent,Colors.purple,Colors.white24,Colors.lightGreenAccent,Colors.purple,Colors.greenAccent,]
      //             border: Border.all(width: 3,color: Colors.black,style: BorderStyle.solid),
      //             borderRadius: BorderRadius.circular(10),
      //         ),
      //         child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Icon(Icons.list,size: 40,),
      //             Text("Flutter Widgets",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      //             Icon(Icons.more_vert,size: 30,)
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("All Flutter Widgets"),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(width: double.infinity,
            child: Column(
              children: [
                // Container(
                //   height: 70,
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //       // gradient: LinearGradient(
                //       //     begin:
                //       //     Alignment.centerRight,
                //       //     end: Alignment.centerLeft,
                //       //     colors: [Colors.lightBlueAccent,Colors.lightGreenAccent,]),
                //       border: Border.all(width: 0.1,color: Colors.black,style: BorderStyle.solid),
                //       borderRadius: BorderRadius.circular(10)
                //   ),
                //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       Icon(Icons.list,size: 40,),
                //       Text("Flutter Widgets",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                //       Icon(Icons.more_vert,size: 30,)
                //     ],
                //   ),
                // ),
                CustomButten(
                    name: "Text Widget", onPressed: (){Get.to(TextWidget());}),
                CustomButten(
                    name: "Container Widget", onPressed: (){Get.to(ContainerWidget());}),
                CustomButten(
                    name: "Row&Colmun", onPressed: (){Get.to(RowColumnWidget());}),
                CustomButten(
                    name: "TextField Widget", onPressed: (){ Get.to(TextFieldWidget());}),
                CustomButten(
                    name: "All  Buttens", onPressed: (){Get.to(AllFlutterButten());}),
                CustomButten(
                    name: "ListTile Widget", onPressed: (){Get.to(ListTileWidget());;}),
                CustomButten(
                    name: "DateTimePiker", onPressed: (){Get.to(DateTimePiker());}),
                CustomButten(
                    name: "Tabbar Widget", onPressed: (){Get.to(TabbarWidget());}),
                CustomButten(
                    name: "Url Launcher", onPressed: (){Get.to(UrlLauncher());}),
                CustomButten(
                    name: "Image Picker", onPressed: (){Get.to(ImagePikerApp());}),
                CustomButten(
                    name: "Flutter Calender" ,onPressed: (){Get.to(ImagePikerApp());}),
                CustomButten(
                    name: "Bottom Bar" ,onPressed: (){Get.to(BottomScreen());}),
                CustomButten(
                    name: "Drawer Widget" ,onPressed: (){Get.to(DrawerWidget());}),
                CustomButten(
                    name: "Animated Bar" ,onPressed: (){Get.to(AnimatedBottomBar());}),
                CustomButten(
                    name: "Print Name" ,onPressed: (){Get.to(PrintName());}),
                CustomButten(
                    name: "Triangle" ,onPressed: (){Get.to(Triangle());}),
                CustomButten(
                    name: "Percentage" ,onPressed: (){Get.to(Percentage());}),
                CustomButten(
                    name: "Kat App" ,onPressed: (){Get.to(CaatApp());}),
                CustomButten(
                    name: "Alert Dialog" ,onPressed: (){Get.to(Alert());}),
                CustomButten(
                    name: "line" ,onPressed: (){Get.to(AnimatedPainterTest());}),
                CustomButten(
                    name: "Position" ,onPressed: (){Get.to(PositionScreen());}),
                CustomButten(
                    name: "Animatd Border" ,onPressed: (){Get.to(AnimatedBorder());}),
                CustomButten(
                    name: "Zahid" ,onPressed: (){Get.to(Zahid());}),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 65,
      //   margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //       // gradient: LinearGradient(
      //       //     begin:
      //       //     Alignment.centerRight,
      //       //     end: Alignment.centerLeft,
      //       //     colors: [Colors.lightBlueAccent,Colors.lightGreenAccent,]),
      //       border: Border.all(width: 3,color: Colors.black,style: BorderStyle.solid),
      //       borderRadius: BorderRadius.circular(10)
      //   ),
      //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Icon(Icons.home,size: 30,),
      //       SizedBox(),
      //       SizedBox(),
      //       Icon(Icons.settings,size: 30,),
      //       SizedBox(),
      //       SizedBox(),
      //       Icon(Icons.delete,size: 30,),
      //     ],
      //   ),
      // ),
    );
  }
}
