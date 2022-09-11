// http 클라이언트와 상호작용, 데이터 가져오는 기능 구현
import 'package:flutterlab/crud/model/product_model.dart';
import 'package:http/http.dart' as http;

class Services {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse(
      'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline',
    ));
    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productFromJson(jsonData);
    } else {
      return null;
    }
  }
}
