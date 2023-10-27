import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state/myController.dart';
import 'package:state/student.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  // var count = 0.obs;
  // void increment(){
  //   count++;
  // }
//  var student = Student();
final student = Student(name:'Frodd', age: 25).obs;
// MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.fetchApiData,
      theme: ThemeData(
      
        primarySwatch: AppColor.purpleColor,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
      // 
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text('State Management'),
      //   ),
      //   body: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         // GetX<MyController>(
      //           GetBuilder<MyController>(
      //             // init: MyController(),
      //             // initState: (data) => myController.increment(),
      //             // dispose: (_) => myController.cleanUpTask(),
      //             builder: ((controller) {
      //             return Text('This Value is ${controller.count}',
      //             style: TextStyle(
      //               fontSize: 25
      //             ),);
      //           })),
      //           // init: MyController(),
      //           // builder: ((controller) {
      //           //   return Text(
      //           //   'The Value is ${myController.count}',
      //           //   style: TextStyle(
      //           //     fontSize: 25,
      //           //   ),);
      //           // })),
      //         // Obx((() => Text('Name is ${student.value.name}',
      //         // style: TextStyle(
      //         //   fontSize: 25,
      //         // ),
      //         // )
      //         // ), 
      //         // ),
      //         // const SizedBox(height: 20,),
      //         // ElevatedButton(
      //         //   child: Text('Name'),
      //         //   onPressed: (() {
      //         //   //  increment(); 
      //         //   // student.name.value = student.name.value.toUpperCase();
      //         //   // student.update((student) {
      //         //   //   student!.name = student.name.toString().toUpperCase();
      //         //   // });
      //         //   // Get.find<MyController>().increment();
      //         //   myController.increment();

      //         //   } ),
      //         //   ),
      //       ]
      //     ),
      //   ),
      // )

    );
  }
}

