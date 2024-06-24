import 'package:all_flutter_work/view/widget/custum_text_field.dart';
import 'package:all_flutter_work/view/widget/my_custom_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Zahid extends StatefulWidget {

  const Zahid({Key? key}) : super(key: key);
  @override
  State<Zahid> createState() => _ZahidState();
}
class _ZahidState extends State<Zahid> {
  String name = "";
  String kuch= "Tap me!";
  String chl= "Taped";
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isTapped ? Colors.white : Colors.purple,
      appBar: AppBar(
        backgroundColor: _isTapped ? Colors.blue : Colors.red,
        centerTitle: true,
        title: Text(name,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        leading: Icon(_isTapped ? Icons.menu : Icons.print,size: 30,),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.share,size: 30,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                  child: Container(
                    height: 150,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _isTapped ? Colors.blue : Colors.red,
                        // gradient: const LinearGradient(
                        //     begin:
                        //     Alignment.centerRight,
                        //     end: Alignment.centerLeft,
                        //     colors: [Colors.limeAccent,Colors.deepOrange]),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          _isTapped = !_isTapped;
                        });
                      },
                        child: Text(name,style: TextStyle(color: _isTapped ? Colors.white : Colors.black,fontWeight: FontWeight.bold,fontSize: 30),)),
                  ),
                ),
                SizedBox(height: 20,),
                CustomTextField(name:"Name", isActive:false, icon: Icons.menu,onChanged: (val){name=val;},),
                SizedBox(height: 20,),
                MyContainer(),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                    child: Text(name,style: TextStyle(color: _isTapped ? Colors.blue : Colors.black,fontWeight: _isTapped ? FontWeight.bold :FontWeight.w100,fontSize: _isTapped ? 20 : 20,),)),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                    setState(() {
                      print(name);
                    });
                  },
                    child: Container(
                      height: _isTapped ? 100 :100,
                      width: _isTapped ? 100 :100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isTapped ? Colors.blue : Colors.red,
                        borderRadius: BorderRadius.circular(_isTapped ? 20 : 100),
                      ),
                      child: Text(_isTapped ? chl : kuch,),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
