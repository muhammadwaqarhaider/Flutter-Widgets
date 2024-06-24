import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String name;
  void Function(String)? onChanged;
  IconData icon;
  final bool isActive;
  CustomTextField({Key? key, required this.name,this.onChanged, required this.isActive,required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      scrollPadding: EdgeInsets.zero,
      decoration: InputDecoration(
        hintText: name,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
                width: 2,color: Colors.black
            )
        ),
        suffixIcon:Icon(icon) ,
        filled: true,
        fillColor: Colors.white,
      ),
      obscureText: isActive,
    );
  }
}
