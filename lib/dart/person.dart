class Person{

  int? id = null;
  String name ="abdu ";
  late String phone;
  String age ;
  Person (this.age);

  Person.me(this.id, this.name, this.phone, this.age);
  Person.one(this.id, this.name, this.phone, this.age);
  Person.two(this.id, this.name, this.phone, this.age);
  Person.momo(this.id, this.name, this.phone, this.age);




}
//--------------------------------------
class Person1{

  int? id = 0;
  String _name =" ";
  late String phone="";
  String age ="" ;
  String _dataTime ="7653928_68789";

  String getData(){
    return _dataTime.split(" ")[0];

  }
String gettime(){
  return _dataTime.split(" ")[0];
}

}
void main (){

}