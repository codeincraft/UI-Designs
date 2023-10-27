// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:storage/count_controller.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends GetView<CountController>{
  @override
  Widget build(BuildContext context) {
   Get.put(CountController());
   return GetMaterialApp(
     title: 'Get View',
     home: Scaffold(
       appBar: AppBar(
         title: Text("GetView"),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Obx(
               () => Text('This is the value of ${controller.count}',
               style: TextStyle(
                 fontSize: 30,
               ),)
             ),
             SizedBox(height: 8,),
             ElevatedButton(
               child: Text('Increment'),
               onPressed: (){
                 print(controller.hashCode);
                 controller.increment();
               },)
           ],
         ),
       ),
     ),
   );
  }

}
// Future<void> main() async {
//   await GetStorage.init();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   var emailEditingController = TextEditingController();
//   var storage = GetStorage();

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//         title: 'Storage and Email',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           appBar: AppBar(
//             title: const Text('Sorage and Email Verification'),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: TextField(
//                     controller: emailEditingController,
//                   ),
//                 ),
//                const SizedBox(
//                   height: 8,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: ElevatedButton(
//                     child: const Text('Write'),
//                     onPressed: () {
//                       if (GetUtils.isEmail(emailEditingController.text)) {
//                         storage.write('email', emailEditingController.text);
//                       } else {
//                         Get.snackbar(
//                             'Incorrect Email', 'Type email in valid format',
//                             colorText: Colors.white,
//                             backgroundColor: Colors.black,
//                             snackPosition: SnackPosition.BOTTOM);
//                       }
//                     },
//                   ),
//                 ),
//                 const SizedBox(height: 8,),
//                 Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: ElevatedButton(
//                     child: const Text('Read'),
//                     onPressed: (){
//                       print('the email is ${storage.read('Email')}'); 
//                     },
//                   ),),
//               ],
//             ),
//           ),
//         ));
//   }
// }
