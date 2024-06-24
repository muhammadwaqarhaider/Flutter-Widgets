import 'package:all_flutter_work/model/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Home Screen",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.lightBlue),),
      ),
    );
  }
}
