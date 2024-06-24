import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Text("Home",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
      ),

    );
  }
}
