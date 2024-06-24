void main(){

  final String name;
  name='Waqar';


   //const is inline veriable declear
  const rollno=1234;

  final names=[
    'muhammad',
    'waqar',
    'haider',
  ];
  //final my data over ride nahi karva saktay
  names.add("bilal");
 // names=['rao', 'tanveer','kuch bhi'];

  const body=[
    'muhammad',
    'waqar',
    'haider',
  ];
  //const may data add nahi kar sakty
  body.add("kuch bhi");
  print(body);

}