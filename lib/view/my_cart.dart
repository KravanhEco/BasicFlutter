import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String valueFromHome = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('$valueFromHome'),
        actions: [
          IconButton(onPressed: (){
//            Get.to(MyProduct());
          Get.toNamed('/my-product');
          },icon: Icon(Icons.list),)
        ],
      ),
    );
  }
}
