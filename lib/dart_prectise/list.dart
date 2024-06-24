void main(){

  print("wellcome to Dart!");

 //collection of multipal data is called list

  var listno = [10,20,30,40];
  listno.add(50);
  listno.add(60);
  print(listno);

  var names=[];
  names.add("muhammad");
  names.add("waqar");
  names.add("haider");

  //print(listno);

  //listno.remove(40);

  //listno.replaceRange(0, 3, [1,2,3,4]);

  //names[1]="rao waqar";

  //names.addAll(listNames);

  //names.insert(2, "1000");
  //names.insertAll(3, listno);

  //print(listno);

  //print(names);
  
  print("leanth:${listno.length}");
  print("reversd:${listno.reversed}");
  print("first:${listno.first}");
  print("last:${listno.last}");
  print("is empty:${listno.isEmpty}");
  print("1s not empty:${listno.isNotEmpty}");
  print("eliment:${listno.elementAt(2)}");


}