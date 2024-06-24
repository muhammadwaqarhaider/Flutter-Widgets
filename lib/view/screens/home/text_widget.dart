import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Text Widgit"),
      ),
      body: SizedBox(width: double.infinity,
        child: Container(padding: EdgeInsets.all(10),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Row(
                children: [
                  Text("""    TextStyle style,  
    StrutStyle strutStyle,  
    TextAlign textAlign,  
    TextDirection textDirection,  
    TextOverflow overflow,  
    bool softWrap,  
    double textScaleFactor,  
    int maxLines,  
    String semanticsLabel,  
    TextWidthBasis textWidthBasis,  
    TextHeightBehavior textHeightBehavior"""),
                ],
              ),
              SizedBox(height: 10,),
              Text(
                "Text",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.purple,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 8,
                  wordSpacing: 8,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.teal,
                  decorationStyle: TextDecorationStyle.dashed,
                  shadows: [
                    Shadow(color: Colors.tealAccent,blurRadius: 7,offset: Offset(2,1))
                  ]
                ),),
              DefaultTextStyle(
                  style: TextStyle(color: Colors.black),
                  child: Column(
                    children: const [
                      Text("First",style: TextStyle(fontSize: 20),),
                      Text("Second",style: TextStyle(fontSize: 20),),
                      Text("Third",style: TextStyle(fontSize: 20),),
                      Text("Four",style: TextStyle(fontSize: 20),),
                    ],
                  )),
              const Text.rich(TextSpan(
                text: "Hallo",
                style: TextStyle(fontSize: 20),
                children: <InlineSpan>[
                  TextSpan(
                    text: "World",
                    style: TextStyle(fontSize: 30),
                  ),
                  TextSpan(text: " !",style: TextStyle(fontSize: 30))
                ]

              )),
              Spacer(),
            ],
          ),
        ),
      )
    );
  }
}
