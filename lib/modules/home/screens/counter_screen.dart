import 'package:booksreview/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${controller.count}")),
            ElevatedButton(
              onPressed: () {
                controller.increment();
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}