import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:startwithgetx/route/app_route.dart';
import 'package:startwithgetx/translate/my_lang.dart';
import 'package:startwithgetx/view/home_page_view.dart';
import 'package:startwithgetx/view/my_cart.dart';
import 'package:startwithgetx/view/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoute.InitializeRoute,
      getPages: AppRoute.getRoute,
      translations: Mylang(),
      locale: Locale('km',"KH"),
    );
  }
}
