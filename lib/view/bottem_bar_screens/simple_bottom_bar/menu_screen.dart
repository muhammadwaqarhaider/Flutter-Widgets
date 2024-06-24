import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Menu Screen",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.lightBlue),),
      ),

    );
  }
}
