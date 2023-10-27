import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snackb/home.dart';
import 'package:snackb/second.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'SnackBar',
//       theme: ThemeData(
     
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Snackbar'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 child: const Text('Show Snack Bar'),
//                 onPressed: (){
//                   Get.snackbar(
//                     'SnackBar Title ', 'Hello World',
//                     snackPosition: SnackPosition.BOTTOM,
//                     titleText: const Text("TGIF"),
//                     // messageText: const Text('Another Day Salute 2 God',
//                     // style: TextStyle(
//                     //   color: Colors.orange,
//                     //   fontSize: 14,
//                     //   fontWeight: FontWeight.bold,
//                     // ),)
//                     userInputForm: Form(
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: TextField())
//                         ],
//                       ))
//                     );
//                 }, )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dialog',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => const MyApp()),
        GetPage(name: '/home', page: () => const Home()),
        GetPage(name: '/nextScreen', page: () => const SecondScreen(),
        transition: Transition.leftToRight,),
        

      ],
      home: Scaffold(
        appBar: AppBar(actions: [],
        title: const Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Go to Home'),
                onPressed: (){
                  Get.toNamed('/home');
                  // Get.to(Home(),
                  // fullscreenDialog: true,
                  // transition: Transition.zoom,
                  // duration: Duration(milliseconds: 4000),
                  // curve: Curves.bounceInOut,
                  // );
                  
                  // Get.defaultDialog(
                  //   title: 'Success',
                  //   titleStyle: TextStyle(
                  //     fontSize: 20,
                  //   ),
                  //   middleText: 'Your registration was successful',
                  //   middleTextStyle: TextStyle(fontSize: 14),
                  //   // radius: 80,
                  //   // backgroundColor: Colors.orangeAccent
                  // );
                  // Get.bottomSheet(
                  //   Container(
                  //     child: Wrap(
                  //       children: [
                  //         ListTile(
                  //           leading: Icon(Icons.wb_sunny_outlined),
                  //           title: Text('Light Theme'),
                  //           onTap: () => {
                  //             Get.changeTheme(ThemeData.light(),),
                  //           },
                  //         ),
                  //         ListTile(
                  //           leading: Icon(Icons.wb_sunny),
                  //           title: Text('Dark Theme'),
                  //           onTap: () => {
                  //             Get.changeTheme(ThemeData.dark(),),
                  //           },
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  //   barrierColor: Colors.teal.withOpacity(0.2),
                  //   backgroundColor: Colors.white,
                  // );
                }, )
            ],
          ),
        ),
      ),
    );
  }
}