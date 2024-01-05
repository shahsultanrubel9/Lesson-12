import 'package:flutter_application_postapi/home_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  HomeService homeService = HomeService();

  void postData(String name, String job) async {
    try {
      http.Response response = await homeService.postData(name, job);
      if (response.statusCode == 201) {
        print(response.body);
      }
    } catch (exception) {
      print(exception);
    }
  }
}
