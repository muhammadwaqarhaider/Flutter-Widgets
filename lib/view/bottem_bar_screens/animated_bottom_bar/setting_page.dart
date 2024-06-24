import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Text("Setting",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
      ),

    );
  }
}
