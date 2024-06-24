import 'package:flutter/material.dart';

class Triangle extends StatelessWidget {
  const Triangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Triangle"),
      ),
      body: Center(
        child: Container(
          child: CustomPaint(size: Size(200, 200), painter: DrawTriangle()),
        ),
      ),
    );
  }
}
class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width / 2,0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, Paint()
      ..color = Colors.cyan);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}