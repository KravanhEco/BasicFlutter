import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:startwithgetx/route/app_route_name.dart';

class HomeController extends GetxController{
  TextEditingController txtController = TextEditingController();
  var counter = 0.obs;
  var str = ''.obs;

  var model = userModel('name',1).obs;



  void increase(){
    counter ++;

  }

  void decrease(){
    counter--;
  }

  void gotoMyCart(){
    String value = txtController.text;
    Get.toNamed(RouteName.MY_CART,arguments: value);
  }

}


class userModel{
  String name;
  int age;

  userModel(this.name, this.age);
}