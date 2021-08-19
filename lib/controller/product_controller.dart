import 'package:get/get.dart';
import 'package:startwithgetx/service/ProductService.dart';

class ProductController extends GetxController{
  late final ProductService productService;


  ProductController({required this.productService}); //  ProductService productService = new ProductService();

  var productList = <String>[].obs;

  void getAllProductList(){
    var tmpList = productService.getAllProductName();
    productList.addAll(tmpList);


    print('product List $tmpList');
//    tmpList.forEach((element) {
//      productList.add(element);
//    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllProductList();
  }

}