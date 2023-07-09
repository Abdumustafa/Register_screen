void main (){
  var names = ["abdu", "momo"];
  names.add("max");
  print(names);

  for(var name in names){
    print ("mr .$name");
  }
  
  print (names.length);
  print (names.first);
  print (names.last);
  print (names.contains("abdu"));
  print(names[0]);
  names.removeWhere((element) => element=="abdu");
  print(names);
  names.add("abdu");

}

