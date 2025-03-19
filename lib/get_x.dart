/*
 * What Does .obs(Observable) Do?
    It makes a variable reactive.
    When the value of an observable variable changes, all widgets that depend on 
    it are automatically rebuilt.
    his eliminates the need for manually calling setState or using complex state 
    management logic.

 * 
 */

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() => count++;
}

class CounterApp extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Example')),
      body: Center(
        child: Obx(() => Text('Counter: ${controller.count}')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}