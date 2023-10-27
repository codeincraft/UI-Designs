import 'package:get/get.dart';


class CountController extends GetxController{
dynamic count = 0.obs;
void increment(){
  count++;
}
}