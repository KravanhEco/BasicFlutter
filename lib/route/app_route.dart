import 'package:get/get.dart';
import 'package:startwithgetx/controller/HomeBinding.dart';
import 'package:startwithgetx/route/app_route_name.dart';
import 'package:startwithgetx/view/home_page_view.dart';
import 'package:startwithgetx/view/my_cart.dart';
import 'package:startwithgetx/view/product.dart';
import 'package:startwithgetx/view/splash_screen.dart';

class AppRoute{

  static final InitializeRoute = RouteName.SPLASH_SCREEN;

  static final getRoute = [
    GetPage(name: RouteName.SPLASH_SCREEN, page: () => SpashScreen()),
    GetPage(name: RouteName.MY_CART, page: () => MyCart()),
    GetPage(name: RouteName.MY_PRODUCT, page: () => MyProduct()),
    GetPage(name: RouteName.HOME, page: () => ViewHomePage(),binding: HomeBinding()),
  ];
}