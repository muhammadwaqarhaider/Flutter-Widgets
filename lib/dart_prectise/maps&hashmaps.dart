void main(){

  // var map_name ={
  //
  //   'key1':'value1',
  //   'key2':123,
  //   'key3':2.2,
  //   'key4':true,
  //   'name':'Muhammad waqar haider',
  // };
  // map_name ['key5']='waqar';
  // print(map_name);
  // print(map_name['key2']);

  var mapName=Map();

  mapName ['name'] = 'Waqar';
  mapName ['father name'] = 'Abdul Hameed';
  mapName ['class'] = 'Second year';
  mapName ['test'] = 'math';

  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.length);
  print(mapName.values);
  print(mapName.keys);
  print(mapName.containsKey('name'));
  print(mapName.containsValue('class'));
  print(mapName.remove('test'));
  print(mapName);
}