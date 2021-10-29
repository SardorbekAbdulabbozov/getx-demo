import 'package:get/get.dart';

class ItemController extends GetxController{
  var count = 0.obs;

  void increment(){
    count.value++;
  }
}