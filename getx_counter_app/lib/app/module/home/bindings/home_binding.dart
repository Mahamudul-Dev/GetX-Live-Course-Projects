import 'package:get/get.dart';
import 'package:getx_counter_app/app/module/home/controllers/home_controller.dart';
import 'package:getx_counter_app/app/module/home/controllers/second_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(()=> HomeController()); 
    Get.lazyPut(()=> SecondController()); 
  }
  
}