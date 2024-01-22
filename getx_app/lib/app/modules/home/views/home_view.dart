import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_app/app/widgets/contact_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              controller.fetchContact();
            }, icon: Icon(Icons.refresh_rounded))
          ],
        ),
        body: SafeArea(
            child: FutureBuilder(
                future: controller.fetchContact(),
                builder: (ctx, snapshot) {
                  if (snapshot.hasData) {
                    return Obx(() => ListView.builder(
                        itemCount: controller.contacts.value?.profiles?.length,
                        itemBuilder: (context, index) {
                          return ContactCard(
                              name: controller.contacts.value?.profiles?[index].name ?? '',
                              email: controller.contacts.value?.profiles?[index].email ?? '',
                              address: controller.contacts.value?.profiles?[index].address ?? '',
                              city: controller.contacts.value?.profiles?[index].city ?? '',
                              country: controller.contacts.value?.profiles?[index].country ?? '');
                        }));
                  } else if (snapshot.hasError) {
                    return const Center(
                      child: Text('There was an error'),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
