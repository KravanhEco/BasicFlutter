import 'package:get/get.dart';
import 'package:startwithgetx/controller/cart_controller.dart';
import 'package:startwithgetx/controller/home_controller.dart';
import 'package:startwithgetx/controller/product_controller.dart';
import 'package:startwithgetx/service/ProductService.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ProductService>(() => ProductService());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProductController(productService: Get.find()));
    Get.lazyPut(() => CartController());
  }

}