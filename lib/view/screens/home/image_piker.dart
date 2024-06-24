import 'dart:io';
import 'package:all_flutter_work/model/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class ImagePikerApp extends StatefulWidget {
  const ImagePikerApp({Key? key}) : super(key: key);

  @override
  State<ImagePikerApp> createState() => _ImagePikerAppState();
}

class _ImagePikerAppState extends State<ImagePikerApp> {
  File? _image;

  Future getImage(ImageSource source) async{
    try{
      final image = await ImagePicker().pickImage(source: source);
      if( image==null) return;

      //final imageTemporary = File(image.path);
      final imagepermanent = await saveFilePermanently(image.path);

      setState(() {
        this._image = imagepermanent;
      });
    }on PlatformException catch (e){
      print("Field to pic Image: $e");
    }
  }

  Future<File> saveFilePermanently(String imagePath)async{
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File("${directory.path}/$name");

    return File(imagePath).copy(image.path);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text("Image Piker"),
      ),
      body: SizedBox(width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            _image!=null ?Image.file(_image!,height: 250,width: 250,fit: BoxFit.fill,): Image.asset(Images.logo,height: 250,width: 250,),
            SizedBox(height: 40,),
            CustomButten(title: "Pic an Gallery", icon: Icons.image_outlined, onClick: ()=>getImage(ImageSource.gallery)),
            SizedBox(height: 10,),
            CustomButten(title: "Pic from Camra", icon: Icons.camera_alt, onClick: ()=>getImage(ImageSource.camera)),
          ],
        ),
      ),
    );
  }
  Widget CustomButten({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}){
    return Container(
      width: 280,
      child: ElevatedButton(
        onPressed: onClick,
        child: Row(
          children: [
            Icon(icon),
            SizedBox(width:20 ,),
            Text(title),
          ],
        ),
      ),
    );
  }
}
