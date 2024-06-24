import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class FlutterCalender extends StatelessWidget {
  const FlutterCalender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Flutter Calender"),
      ),
      body: Column(
        children: [

        ],
      ),

    );
  }
}
