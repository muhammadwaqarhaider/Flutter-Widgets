import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,

      body: Center(
        child: Text("Search",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
      ),

    );
  }
}
