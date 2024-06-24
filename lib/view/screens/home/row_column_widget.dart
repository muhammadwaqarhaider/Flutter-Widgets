
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
   RowColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Row&Column Widget"),
      ),
      body: Padding(
        padding:  EdgeInsets.all(10),
        child: Column(
          children:  [
           // Text("Row&Column",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
           //  SizedBox(height: 600,
           //    child: ListView(
           //      physics: const BouncingScrollPhysics(),
           //      children: [
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //        ListTile(
           //          shape: Border.all(),
           //          title: Text("Rao Sab"),
           //          subtitle: Text("Rao Sab"),
           //        ),
           //      ],
           //    ),
           //  )
          ],
        ),
      ),
    );
  }
}
