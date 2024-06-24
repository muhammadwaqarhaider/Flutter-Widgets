import 'package:all_flutter_work/services/firebase_sevices.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoogleScreen extends StatefulWidget {
  const GoogleScreen({Key? key}) : super(key: key);

  @override
  State<GoogleScreen> createState() => _GoogleScreenState();
}

class _GoogleScreenState extends State<GoogleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(FirebaseAuth.instance.currentUser!.photoURL!=null)
              Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
            SizedBox(height: 20,),
            if(FirebaseAuth.instance.currentUser!.displayName!=null)
              Text("${FirebaseAuth.instance.currentUser!.displayName}"),
            SizedBox(height: 20,),
            Text("${FirebaseAuth.instance.currentUser!.email}"),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async{
                 await FirebaseServices().signOut();
                },
                child: Text("Logout",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}
