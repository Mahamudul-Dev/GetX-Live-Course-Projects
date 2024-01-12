import 'package:get/get.dart';
import 'package:getx_counter_app/app/module/home/bindings/home_binding.dart';
import 'package:getx_counter_app/app/module/home/views/home_view.dart';

class AppRoute {

  static String initialPage = '/home';
  

  static final routes = [
    GetPage(name: '/home', page: ()=> const HomeView(), binding: HomeBinding(), bindings: [
      
    ]),
  ];
}