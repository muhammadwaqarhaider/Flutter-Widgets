import 'package:flutter/material.dart';

class PositionScreen extends StatefulWidget {
  const PositionScreen({Key? key}) : super(key: key);

  @override
  State<PositionScreen> createState() => _PositionScreenState();
}

class _PositionScreenState extends State<PositionScreen> {
  Offset offset=const Offset(0, 0);
  Offset startOffset=const Offset(0, 0);
  Offset endOffset=const Offset(0, 0);
  List<CustomPaint> lines=[];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          // onTapUp: (TapUpDetails upDetail){
          //   print("Up");
          //   print(upDetail.localPosition);
          //   // offset=upDetail.localPosition;
          //   // setState(() {
          //   //
          //   // });
          // },
          // onTapDown: (TapDownDetails downDetail){
          //   print("Down");
          //   print(downDetail.localPosition);
          //   // offset=downDetail.localPosition;
          //   // setState(() {
          //   //
          //   // });
          // },
          onPanDown: (panDownDetail){
            print("panDownDetail");
            print(panDownDetail.localPosition);
            startOffset=panDownDetail.localPosition;
            endOffset=startOffset;
            setState(() {});
          },
          onPanStart: (panStartDetail){
            print("panStartDetail");
            print(panStartDetail.localPosition);
          },
          onPanUpdate: (panUpdateDetail){
            print("panUpdateDetail");
            print(panUpdateDetail.localPosition);
            endOffset=panUpdateDetail.localPosition;
            setState(() {

            });
          },
          onPanEnd: (panEndDetail){
            lines.add(CustomPaint(
              size: Size.infinite,
              painter: LinesPainter(startOffset, endOffset),
            ));
            startOffset=Offset.zero;
            endOffset=Offset.zero;
            setState(() {

            });
          },
          // onHorizontalDragDown: (DragDownDetails horizontalDragDown){
          //   print("horizontalDragDown");
          // },
          // onHorizontalDragStart: (DragStartDetails horizontalDragStart){
          //   print("horizontalDragStart");
          // },
          // onHorizontalDragEnd: (DragEndDetails horizontalDragEnd){
          //   print("horizontalDragEnd");
          //   print(horizontalDragEnd);
          //   offset=horizontalDragEnd.velocity.pixelsPerSecond;
          //   setState(() {
          //
          //   });
          // },
          // onHorizontalDragUpdate: (DragUpdateDetails horizontalDragUpdate){
          //   print("horizontalDragUpdate");
          //   print(horizontalDragUpdate);
          // },
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Stack(
              children: [
                for(int i=0;i<lines.length;i++)
                lines[i],
                CustomPaint(
                  size: Size.infinite,
                  painter: LinesPainter(startOffset, endOffset),
                ),
                // Positioned(
                //   top: endOffset.dy>startOffset.dy?startOffset.dy:endOffset.dy,
                //   left: endOffset.dx>startOffset.dx?startOffset.dx:endOffset.dx,
                //   // child: Transform(
                //   //   origin: startOffset,
                //   //
                //     child: Container(
                //       height: endOffset.dy>startOffset.dy?endOffset.dy-startOffset.dy:startOffset.dy-endOffset.dy,
                //       width: 10,
                //       color: Colors.red,
                //     ),
                //   ),
                // ),
                // Draggable(
                //   onDragUpdate: (DragUpdateDetails dragUpdate){
                //     print("drag Update");
                //     print(dragUpdate);
                //   },
                //     child: Icon(Icons.home),
                //   feedback: Icon(Icons.star),
                // ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LinesPainter extends CustomPainter {
  final Offset start, end;

  LinesPainter(this.start, this.end);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
        start,
        end,
        Paint()
          ..strokeWidth = 4
          ..color = Colors.black);
  }

  @override
  bool shouldRepaint(LinesPainter oldDelegate) {
    return oldDelegate.start != start || oldDelegate.end != end;
  }
}