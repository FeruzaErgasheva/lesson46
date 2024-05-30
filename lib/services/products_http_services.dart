import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lesson_46_homework/models/product_model.dart';

class ProductsHttpService {
  Future<List<ProductModel>> getProducts() async {
    Uri uri = Uri.parse("https://api.escuelajs.co/api/v1/products");
    try {
      final response = await http.get(uri);
      final data = jsonDecode(response.body);
      // print(data);

      List<ProductModel> loadedProducts = [];
      if (data != null) {
        for (Map product in data) {
          Map<String, dynamic> productMap = product.cast<String, dynamic>();
          loadedProducts.add(ProductModel.fromJson(productMap));
        }
      }
      print(loadedProducts.length);
      return loadedProducts;
    } catch (e) {
      print(e);
    }
    return [];
  }
}

void main(List<String> args) {
  ProductsHttpService productsHttpService = ProductsHttpService();
  productsHttpService.getProducts();
}
