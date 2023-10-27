import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackb/second.dart';
import 'package:snackb/main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const  Text('Welcome'),
           const  SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Next Screen'),
              onPressed: () {
                Get.toNamed('/nextScreen');
              },
            ),
           const  SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Go Back Home'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
