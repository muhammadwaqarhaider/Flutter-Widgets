import 'package:all_flutter_work/services/firebase_sevices.dart';
import 'package:all_flutter_work/view/widget/custum_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TextFieldWidget extends StatefulWidget {
   TextFieldWidget({Key? key}) : super(key: key);


  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  String email="";
  String password="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("TextField Widget"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(10),
          child: Column(
            children:    [
               SizedBox(width: double.infinity,
                 child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("TextField Proerty",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                     Text("decuration\nborder\nIabelText\nhintText\nicon",style: TextStyle(fontSize: 20),),
                   ],
                 ),
               ),
               SizedBox(height: 10,),
              SizedBox(width: double.infinity,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(email,style: TextStyle(fontSize: 15,),),
                    SizedBox(height: 10,),
                    Text(password,style: TextStyle(fontSize: 15),),
                    SizedBox(height: 10,),
                  ],
                ),
              ),

              CustomTextField(name: "Email", isActive: false, icon: Icons.email,onChanged: (val){email=val;}),
              SizedBox(height: 20,),
              CustomTextField(name: "Password", isActive: true, icon: Icons.password,onChanged: (val){password=val;}),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: ()  async {

                    FirebaseServices().signIn(email: email, password: password);
                  },
                  child: Text("Login")),
              SizedBox(height: 70,),
              Container(margin: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: () async{
                      FirebaseServices().signInWithGoogle();
                    },
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.apps_outlined,),
                        SizedBox(width: 15,),
                        Text("Login With Google",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)

                      ],
                    )),
              )
              // TextField(
              //   decoration: InputDecoration(
              //     hintText: "Email",
              //     border: OutlineInputBorder(),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: Colors.black),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(color: Colors.lightBlueAccent)
              //     ),
              //     suffixIcon: Icon(Icons.email),
              //    // prefixIcon: Icon(Icons.email),
              //     //suffixText: "email",
              //   ),
              //   cursorColor: Colors.lightBlueAccent,
              //   obscureText: true,
              //   obscuringCharacter: "0",
              // ),
              // SizedBox(height: 10,),
              // TextField(
              //   obscureText: true,
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     labelText: 'Password',
              //     hintText: 'Enter Password',
              //   ),
              // ),
            ],
          ),
        ),
      ),

    );
  }
}
