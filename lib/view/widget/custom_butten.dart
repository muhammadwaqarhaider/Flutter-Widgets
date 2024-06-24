import 'package:flutter/material.dart';

class CustomButten extends StatelessWidget {
  final String name;
  Function()? onPressed;
   CustomButten({Key? key, required this.name,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 5.7,horizontal: 10),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(100),bottomLeft: Radius.circular(100),bottomRight: Radius.circular(10),),
          border: Border.all(width: 1,color: Colors.black,),
         // gradient: LinearGradient(colors: [Colors.orange,Colors.pinkAccent,Colors.red,Colors.yellowAccent,Colors.purple,Colors.white24,Colors.lightGreenAccent,Colors.purple,Colors.greenAccent,])
        ),

        child: Center(child: Text(name,style: TextStyle(fontSize: 20),)),
      ),
    );

  }
}
