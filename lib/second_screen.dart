import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_flutter/item_controller.dart';

class SecondScreen extends StatelessWidget {
  static const routeName = '/second-screen';
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemController itemController = Get.find<ItemController>();
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('THIS IS SECOND SCREEN'),
            const SizedBox(height: 5),
            Obx(() => Text('Counter value: ${itemController.count}')),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('GO TO FIRST SCREEN'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                itemController.increment();
              },
              child: const Text('INCREMENT COUNTER'),
            )
          ],
        ),
      ),
    );
  }
}
