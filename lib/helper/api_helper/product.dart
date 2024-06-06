import 'dart:convert';

import 'package:produuct_detail_app/modal/product_modal.dart';
import 'package:http/http.dart' as http;

class ProductHelper {
  ProductHelper._();
  static ProductHelper apihelper = ProductHelper._();

  String ApiLink = "https://dummyjson.com/products";

  Future<List<ProductMd>> getproductapi() async {
    List<ProductMd> Product = [];
    http.Response responce = await http.get(
      Uri.parse(ApiLink),
    );
    if (responce.statusCode == 200) {
      Map data = jsonDecode(responce.body);
      List product = data['products'];
      Product = product
          .map(
            (e) => ProductMd.fromJson(e),
          )
          .toList();
    }
    return Product;
  }
}
