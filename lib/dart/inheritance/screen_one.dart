import 'base_screen.dart';

class ScreenOne extends BaseScreen{
  ScreenOne(super.screenName);

  @override
  void startLoading (){

    super.startLoading();
    print("loading...");
  }
  @override
  void printData(){
    // TODO: implement printData
  }

}