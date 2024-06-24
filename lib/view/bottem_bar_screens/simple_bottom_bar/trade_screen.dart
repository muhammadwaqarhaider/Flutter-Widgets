import 'package:flutter/material.dart';

class TradeScreen extends StatelessWidget {
  const TradeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Trade Screen",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.lightBlue),),
      ),

    );
  }
}
