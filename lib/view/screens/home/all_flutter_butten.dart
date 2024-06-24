import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllFlutterButten extends StatefulWidget {
  const AllFlutterButten({Key? key}) : super(key: key);

  @override
  State<AllFlutterButten> createState() => _AllFlutterButtenState();
}

class _AllFlutterButtenState extends State<AllFlutterButten> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("All Flutter Buttens"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Types Of Flutter Butten",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 10,),
            Text("""Flat Button\nRaised Button\nFloating Button\nDrop Down Button\nIcon Button\nInkwell Button\nPopupMenu Button\nOutline Button""",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(" 1:Text Butten",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    TextButton(
                      onPressed: (){},
                      child: Text("Text Butten",style: TextStyle(fontWeight: FontWeight.bold),),
                      onLongPress: (){},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(" 2:Elevated Butten",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text("Elevated Butten",style: TextStyle(fontWeight: FontWeight.bold),))
                  ],
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("3:InkWell Butten",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 20,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 30,
                        width: 120,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("InkWell Butten",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("4:Icon Butten",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.apps_outlined,size: 50,)
                    ),

                  ],
                )
              ],
            ),
            SizedBox(height: 25,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("4:Outlined Button",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 10,),
                    OutlinedButton(
                        onPressed: (){},
                        style: OutlinedButton.styleFrom(
                          primary: Colors.green,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                        child: Text("Outlined Butten",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ],
                ),
                Column(
                  children: [
                    Text("4:Floating Button",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                    SizedBox(height: 5,),
                    FloatingActionButton
                      (onPressed: () {},
                      backgroundColor: Colors.cyan,
                      child: Icon(Icons.star,color: Colors.white,size: 20,),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 25,),
            Row(
              children: [

              ],
            )


          ],
        ),
      ),
    );
  }
}




