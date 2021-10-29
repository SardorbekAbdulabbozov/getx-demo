import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:just_flutter/item_controller.dart';
import 'package:just_flutter/second_screen.dart';
import 'package:just_flutter/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        SecondScreen.routeName: (context) => const SecondScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ItemController itemController = Get.put(ItemController());
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('FIRST SCREEN'),
            const SizedBox(height: 5),
            Obx(() => Text('Counter value: ${itemController.count}')),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(SecondScreen.routeName);
              },
              child: const Text('GO TO SECOND SCREEN'),
            ),
          ],
        ),
      ),
    );
  }
}
