void main (){
   var n = Nullable();


}
class Nullable {

  String? _name ;
  void test({String? name}) {}

  void printName(){

    print(_name);
    _name ??="";
    _name ="Abdu";
    print(_name);
    if (_name !=null ){
      print  (_name! .isEmpty);

    }
  }

  String get name => _name ?? '';
   set name(String value){
     _name =value;
   }
}