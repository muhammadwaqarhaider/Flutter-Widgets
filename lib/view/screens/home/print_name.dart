import 'package:flutter/material.dart';

class PrintName extends StatefulWidget {
  const PrintName({Key? key}) : super(key: key);

  @override
  State<PrintName> createState() => _PrintNameState();
}

class _PrintNameState extends State<PrintName> {
  String name="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Print Name"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                //hintText: "Add Name",
                  prefixIcon: const Icon(Icons.menu,color: Colors.black,),
                  label: const Text("Add Name",style: TextStyle(color: Colors.black),),
                  border: OutlineInputBorder(
                    // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(40),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(40)),
                      borderSide: BorderSide(color: Colors.black)
                  )
              ),
              keyboardType: TextInputType.name,
              cursorColor: Colors.black,
              onChanged: (val){name=val;},
            ),
            const SizedBox(height: 50,),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 0.8,color: Colors.black,style: BorderStyle.solid),
                ),
                child: Text(name,style: const TextStyle(fontSize: 20),)),
            const SizedBox(height: 50,),
            InkWell(
              onTap: (){
                if(name==""){
                  setState(() {});
                  name="Entae your name!!";
                }else{
                  setState(() {});
                  print(name);
                }

              },
              child: Container(
                height: 60,
                width: 200,
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
                child: const Text("Butten",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 35),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
