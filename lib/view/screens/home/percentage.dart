import 'package:all_flutter_work/model/utils/colors.dart';
import 'package:all_flutter_work/model/utils/styles.dart';
import 'package:flutter/material.dart';

class Percentage extends StatefulWidget {
  const Percentage({Key? key}) : super(key: key);

  @override
  State<Percentage> createState() => _PercentageState();
}

class _PercentageState extends State<Percentage> {
  String grade="";
  String fill="";
  String percentage="";
  String total_mark="";
  String given_mark="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Percentage&Grade"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  //hintText: "Add Name",
                    prefixIcon: Icon(Icons.menu,color: Colors.black,),
                    label: Text("Total_Marks",style: TextStyle(color: Colors.black),),
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.black)
                    ),
                ),
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                onChanged: (val){total_mark=val;},
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  //hintText: "Add Name",
                    prefixIcon: Icon(Icons.menu,color: Colors.black,),
                    label: Text("Given_Marks",style: TextStyle(color: Colors.black),),
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                        borderSide: BorderSide(color: Colors.black)
                    )
                ),
                keyboardType: TextInputType.number,
                cursorColor: Colors.black,
                 onChanged: (val){given_mark=val;},
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Percentage",style: interMedium,),
                      SizedBox(height: 5,),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          height: 70,
                          width: 200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 0.8,color: Colors.black,style: BorderStyle.solid),
                          ),
                          child: Text(percentage,style: TextStyle(fontSize: 20),)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Grade",style: interMedium,),
                      SizedBox(height: 5,),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                          height: 70,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 0.8,color: Colors.black,style: BorderStyle.solid),
                          ),
                          child: Text(grade,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text(fill,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
              SizedBox(height: 30,),
              InkWell(
                onTap: (){

                  //
                  // if(total_mark!="" && given_mark!=""){
                  // //  print Result
                  //
                  //   var itotal_mark=int.parse(total_mark);
                  //   var igiven_mark=int.parse(given_mark);
                  //
                  //   var result=igiven_mark/itotal_mark*100;
                  //   setState(() {
                  //
                  //   });
                  //   percentage="your:$result";
                  //
                  //
                  //
                  // }else{
                  //   setState(() {
                  //     fill="please fill all the required blanks!!";
                  //   });
                  // }

                  // if(total_mark!="" && given_mark!=""){
                  //   //Result
                  // }else if(total_mark!=""){
                  //   fill="Please inter Total_Marks";
                  //   setState(() {});
                  // }else{
                  //   fill="Please inter given_Marks";
                  //   setState(() {});
                  // }

                  if(total_mark==""){
                       setState(() {
                         fill="Please inter Total_Marks!!";
                         percentage="";
                         grade="";
                       });
                  }else if(given_mark==""){
                       setState(() {
                         fill="Please inter given_Marks!!";
                         percentage="";
                         grade="";
                       });
                  }else {

                    var itotal_mark=int.parse(total_mark);
                    var igiven_mark=int.parse(given_mark);

                    var result=igiven_mark/itotal_mark*100;

                    percentage=result.toStringAsFixed(3);

                     if(result==100){
                      grade="Full marks";
                    }else if(result>=80){
                      grade="A+";
                    }else if(result>=70){
                      grade="A";
                    }else if(result>=60){
                      grade="C";
                    }else if(result>=40){
                      grade="D";
                    }else if(result>=33){
                      grade="E";
                    }else{
                      grade="Fail";
                    }
                    setState(() {});
                   // fill="";
                  }

                },
                child: Container(
                  height: 40,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // gradient: const LinearGradient(
                    //     begin:
                    //     Alignment.centerRight,
                    //     end: Alignment.centerLeft,
                    //     colors: [Colors.limeAccent,Colors.deepOrange]),
                    // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 0.8,color: Colors.black,)
                  ),
                  child: Text("Calculate",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
