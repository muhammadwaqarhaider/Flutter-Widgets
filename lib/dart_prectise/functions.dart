void main(){

  print("Wellcome to Dart");

  var func=myClass(); //Funcction calling
  func.printName();

  var code=myClass();
  code.textcode("muhammad");
  //
  //
  //
  //
  code.textcode("waqar");
  //
  //
  //
  //
  code.textcode("haider");

  var addi=myClass();
  print(addi.Add(5, 6));
  print(addi.Add(100, 200));





}
class myClass {

  myClass(){ //Defualt constracter
    print("myClass object created!");
  }

  printName(){  //Declaration
    print("kuch bhi"); //Defination
  }

  textcode(String name){
    print(name);
  }

  int Add(int no1,int no2){

    int sum =no1+no2;
    return sum;
  }

}