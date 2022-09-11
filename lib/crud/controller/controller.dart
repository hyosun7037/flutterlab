import 'package:flutterlab/crud/model/product_model.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var productList = <Product>[].obs; // 데이터 변경시 바로 반응
}
