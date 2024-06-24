import 'package:flutter/material.dart';

class AnimatedPainterTest extends StatelessWidget {
  const AnimatedPainterTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Builder(
        builder: (BuildContext context) {
          AnimationController controller = AnimationController(
            duration: Duration(seconds: 3),
            vsync: Scaffold.of(context),
          );
          return Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () => controller.forward(from: 0),
                child: Text('press me to start the animation'),
              ),
              Expanded(
                child: SizedBox.expand(
                  child: CustomPaint(
                    painter: MyCustomPainter(controller),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
class MyCustomPainter extends CustomPainter {
  List points=[];
  Paint linePaint = Paint()
    ..style = PaintingStyle.stroke
    ..color = Colors.pink
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 16;
  Animation? anim;
  Size size = Size.zero;

  MyCustomPainter(Animation this.anim) : super(repaint: anim) {
    linePaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 30;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if (size != this.size) {
      print('new size $size');
      this.size = size;
      Rect r = (Offset.zero & size).deflate(linePaint.strokeWidth * 1.5);
      points = [
        [r.topLeft, r.bottomLeft], // begins
        [r.bottomLeft, r.topRight], // ends
      ].map((o) => anim!.drive(Tween(begin: o[0], end: o[1]))).toList();
    }
    canvas.drawLine(points[0].value, points[1].value, linePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}