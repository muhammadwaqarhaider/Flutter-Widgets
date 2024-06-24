import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Wallet Screen",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.lightBlue),),
      ),

    );
  }
}
