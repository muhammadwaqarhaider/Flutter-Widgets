import 'package:flutter/material.dart';

class FavouritPage extends StatelessWidget {
  const FavouritPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,

      body: Center(
        child: Text("Favourit",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
    );
  }
}
