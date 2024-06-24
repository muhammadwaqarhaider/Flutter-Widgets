import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Container Widgit",style: TextStyle()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(""" AlignmentGeometry alignment, 
             EdgeInsetsGeometry padding, 
             Color color, 
             Decoration decoration, 
             Decoration foregroundDecoration, 
             double width, 
             double height, 
             BoxConstraints constraints, 
             EdgeInsetsGeometry margin, 
             Matrix4 transform, 
             Widget child, 
             Clip clipBehavior: Clip.none});"""),
            SizedBox(width: double.infinity,
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(30),
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      //image: DecorationImage(image: AssetImage("")),
                      //color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2,color: Colors.pinkAccent,style: BorderStyle.solid),
                      //shape: BoxShape.circle,
                      boxShadow:const [
                        // BoxShadow(
                        //   color: Colors.cyan,
                        //   blurRadius: 5.0,
                        //   spreadRadius: 10.0,
                        //   offset: Offset(2,1)
                        // ),
                      ],
                       gradient: const LinearGradient(
                           begin:
                           Alignment.centerRight,
                           end: Alignment.centerLeft,
                           colors: [Colors.limeAccent,Colors.deepOrange])
                    ),
                    child: const Center(child: Text("Container",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
