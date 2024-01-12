import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/app/routes/app_route.dart';

void main (){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoute.initialPage,
      getPages: AppRoute.routes,
    );
  }
}