import 'package:flutterlab/crud/data/services.dart';
import 'package:flutterlab/crud/model/product_model.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var productList = <Product>[].obs; // 데이터 변경시 바로 반응

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    //http클라이언트와 데이터 불러오기
    var products = await Services.fetchProducts(); //데이터를 받은 후 동작
    if (products != null) {
      productList.value = products;
    }
  }
}
