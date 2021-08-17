import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startwithgetx/controller/home_controller.dart';
import 'package:startwithgetx/route/app_route_name.dart';
import 'package:startwithgetx/view/my_cart.dart';

class ViewHomePage extends StatelessWidget {
  final ctl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
        actions: [
          IconButton(onPressed: (){
            print('clicked');
            Get.offNamed('/my-cart');
              }, icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body:Obx(()=> Center(
        child: Column(
          children: [
            Container(
              child: Text('number ${ctl.counter}'),
            ),
            TextField(
              controller: ctl.txtController,
            ),
            TextButton(child: Text('Submit'),onPressed: (){
              ctl.gotoMyCart();
            },),
          ],
        ),
      )),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(onPressed: (){
            ctl.decrease();
          },child: Icon(Icons.minimize),),
          FloatingActionButton(onPressed: (){
            ctl.increase();
          },child: Icon(Icons.add),),
        ],
      ),
    );
  }
}

