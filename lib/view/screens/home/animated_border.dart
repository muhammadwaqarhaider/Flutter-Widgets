import 'package:flutter/material.dart';

class AnimatedBorder extends StatefulWidget {
  const AnimatedBorder({Key? key}) : super(key: key);

  @override
  State<AnimatedBorder> createState() => _AnimatedBorder();
}

class _AnimatedBorder extends State<AnimatedBorder> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(vsync: this,duration: Duration(seconds: 1));

    _animationController..addStatusListener((status) {
      if(status == AnimationStatus.completed) _animationController.forward(from: 0);
    });

    _animationController.addListener(() {
      setState(() {

      });
    });

    _animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Animated Border"),
      ),
      body: Center(
        child: Container(
          width: 180,
          height: 80,
          decoration: BoxDecoration(
              boxShadow: const[
                BoxShadow(offset: Offset(1,1),blurRadius: 20,color: Colors.black)
              ],
              gradient: SweepGradient(
                  startAngle: 4,
                  colors: [Colors.red,Colors.white],
                  transform: GradientRotation(_animationController.value*6)
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Text("Proto Coders Point"),
            ),
          ),
        ),
      ),
    );
  }
}