import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'second',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const  Text('This is Second Screen'),
           const  SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text('Go Back Gome'),
              onPressed: () {
                Get.toNamed('/');
              },
            ),
         
          ],
        ),
      ),
    );
  }
}