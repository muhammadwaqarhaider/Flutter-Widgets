import 'dart:io';

void main(){

  print("WellCome To Dart!");

  stdout.write("Enter Your Name:");

  var name= stdin.readLineSync();

  print("wellcome,$name");
}