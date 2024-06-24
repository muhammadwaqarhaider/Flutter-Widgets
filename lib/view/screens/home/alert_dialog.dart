import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Alert Dialog"),
        backgroundColor: Colors.cyan,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  elevation: 0,
                  title: const Text("Alert Dialog Box"),
                  content: const Text("You have raised a Alert Dialog Box"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.blue,
                        ),
                        padding: const EdgeInsets.all(14),
                        child: const Text("okay"),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: const Text("Show alert Dialog box"),
          ),

// RaidedButton is deprecated and should not be used
// Instead use ElevatedButton

          // child: RaisedButton(
          //   onPressed: () {
          //     showDialog(
          //       context: context,
          //       builder: (ctx) => AlertDialog(
          //         title: const Text("Alert Dialog Box"),
          //         content: const Text("You have raised a Alert Dialog Box"),
          //         actions: <Widget>[

          // FlatButton is deprecated and should not be used
          // Instead use TextButton

          //           FlatButton(
          //             onPressed: () {
          //               Navigator.of(ctx).pop();
          //             },
          //             child: const Text("okay"),
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          //   child: const Text("Show alert Dialog box"),
          // ),
        ),
      ),
    );
  }
}