import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_flutter/main.dart';

import 'item_controller.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash-screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('THIS IS SPLASH SCREEN'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.off(const FirstScreen());
              },
              child: const Text('GO TO FIRST SCREEN'),
            )
          ],
        ),
      ),
    );
  }
}
