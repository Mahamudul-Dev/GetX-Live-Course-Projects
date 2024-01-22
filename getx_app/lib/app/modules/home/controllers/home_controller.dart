import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_app/app/data/constants/apis.dart';
import 'package:getx_app/app/data/models/contact_model.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {

  Rx<ContactModel?> contacts = Rx(null);
  

  Future<ContactModel> fetchContact() async {
    final response = await http.get(Uri.parse(api));

    print(response.body);

    try {
      final model = ContactModel.fromJson(jsonDecode(response.body));

      contacts.value = model;

      return model;
    } catch (e) {
      print(e);
      throw e;
    }


  }
}
