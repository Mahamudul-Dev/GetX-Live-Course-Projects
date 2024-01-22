import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_app/app/styles/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "GetX App",
      darkTheme: darkTheme,
      theme: ligtTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
