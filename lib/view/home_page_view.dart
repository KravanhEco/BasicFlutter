import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startwithgetx/controller/cart_controller.dart';
import 'package:startwithgetx/controller/home_controller.dart';
import 'package:startwithgetx/controller/product_controller.dart';

class ViewHomePage extends StatelessWidget {
//  final ctl = Get.put(HomeController());
//  final proCtl = Get.put(ProductController());
//  final cartCtl = Get.put(CartController());

    final ctl =Get.find<HomeController>();
    final proCtl =Get.find<ProductController>();
    final cartCtl =Get.find<CartController>();

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
            TextButton(child: Text('hello'.tr),onPressed: (){
              ctl.gotoMyCart();
            },),

            TextButton(onPressed: (){
              if(Get.deviceLocale!.languageCode == 'en'){
                Get.updateLocale(Locale('km','KH'));
                print('kh');
              }else{
                Get.updateLocale(Locale('en','US'));
                print('en');
              }

            }, child: Text('click me'))
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

