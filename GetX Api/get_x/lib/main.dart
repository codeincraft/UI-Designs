import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/count_controller.dart';
// import 'count_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends GetView<CountController> {
  

  @override
  Widget build(BuildContext context) {
    // Get.put(CountController());
    Get.create(()=>CountController());
    return GetMaterialApp(
      title: 'Get View',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Get vIew'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  'The value is ${controller.count}',
                  style: TextStyle(fontSize: 25),
                  
                ),
              ),
              const SizedBox(height: 8,),
              ElevatedButton(
                onPressed: (){
                  print(controller.hashCode);
                  controller.increment();
                },
                child: Text('Increment'))
            ],
          ),
        ),
      ),
    );
  }
}
