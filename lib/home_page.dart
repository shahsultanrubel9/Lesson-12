import 'package:flutter/material.dart';
import 'package:flutter_application_postapi/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Submit'),
          onPressed: () {
            homeController.postData("Sultan", "Student");
          },
        ),
      ),
    );
  }
}




/*
// Appbar
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Center(child: Text('Post API Integration')),
      ),

      //background color
      backgroundColor: const Color.fromARGB(255, 184, 182, 182),
*/