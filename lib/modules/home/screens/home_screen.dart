// modules/home/screens/home_screen.dart

import 'package:booksreview/modules/home/screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (controller) {
                return Text('Count: ${controller.count}');
              },
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text('Increment'),
            ),
            ElevatedButton(
          onPressed: () {
            Get.to(() => CounterPage());
          },
          child: Text('Go to Counter Page'),
        ),
          ],
        ),
      ),
    );
  }
}
