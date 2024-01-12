import 'package:get/get.dart';

class SecondController extends GetxController {
  

  RxInt secondCount = 0.obs;

  void increamentSecondController(){
    secondCount ++;
  }
}