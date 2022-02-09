import 'dart:async';
import 'package:getx_tips_tricks/models/api_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class ApiServices {
  static var client = http.Client();
  static Future<List<ProductList>?> fetchProducts() async {
    var response = await client.get(Uri.parse('https://fakestoreapi.com/products'));
    if(response.statusCode == 200) {
      var jsonString = response.body;
      return productListFromJson(jsonString);
      // List jsonresponse = convert.jsonDecode(response.body);
      // return jsonresponse.map((e) => ProductList.fromJson(e)).toList();
    } else {
      return null;
    }
  }
}
