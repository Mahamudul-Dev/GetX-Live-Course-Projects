import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/app/module/home/controllers/second_controller.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text(controller.firstCount.toString(), style: TextStyle(fontSize: 40),)),
              Obx(() => Text(Get.find<SecondController>().secondCount.toString(), style: TextStyle(fontSize: 40),)),
            ],
          ),

          const SizedBox(height: 30,),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: ()=> controller.increament(), child: Text('Update First Controller')),

              ElevatedButton(onPressed: ()=> Get.find<SecondController>().increamentSecondController(), child: Text('Update Second Controller')),
            ],
          )
        ],
      )


      // floatingActionButton: FloatingActionButton(onPressed: ()=> controller.increament(), child: const Icon(Icons.add),),
    );
  }
}