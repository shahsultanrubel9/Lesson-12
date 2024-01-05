import 'dart:convert';
import 'package:http/http.dart' as http;

class HomeService {
  Future<http.Response> postData(String name, String job) async {
    String url = "https://reqres.in/api/users";
    Map data = {"name": name, "job": job};
    http.Response response =
        await http.post(Uri.parse(url), body: json.encode(data));
    return response;
  }
}
