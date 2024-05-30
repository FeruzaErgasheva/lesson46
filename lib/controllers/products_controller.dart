import 'package:lesson_46_homework/models/product_model.dart';
import 'package:lesson_46_homework/services/products_http_services.dart';

class ProductsController{
final ProductsHttpService productsHttpService = ProductsHttpService();

  Future<List<ProductModel>> getProducts() async {
    List<ProductModel> products = await productsHttpService.getProducts();
    return products;
  }
}