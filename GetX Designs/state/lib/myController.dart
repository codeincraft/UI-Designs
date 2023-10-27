// import 'dart:html';

import 'package:get/get.dart';
import 'package:state/student.dart';

class MyController extends GetxController{

  var count = 0;

  void increment() async{
   await Future.delayed(Duration(seconds: 3));
    this.count++; 
    update();
  }

  void cleanUpTask(){
    print('Clean Up Task'); 
  }
@override
  void onInit() {
    print('Init called');
    super.onInit();
  }
  @override
  void onClose() {
    // print('Closed');
    super.onClose();
  }
}