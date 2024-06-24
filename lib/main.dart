import 'package:all_flutter_work/view/screens/home/flutter_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return GetMaterialApp(
            debugShowCheckedModeBanner:false,
            title: 'Rate Calculation',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: const FlutterWidgets(),
        );
    }
}
