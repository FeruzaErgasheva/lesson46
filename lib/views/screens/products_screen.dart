import 'package:flutter/material.dart';
import 'package:lesson_46_homework/controllers/products_controller.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({super.key});
  final ProductsController productsController = ProductsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Products"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: FutureBuilder(
            future: productsController.getProducts(),

            ///snapshot bu malumot
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (!snapshot.hasData) {
                return const Center(
                  child: Text("Mahsulotlar mavjud emas"),
                );
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                  ),
                );
              }
              final products = snapshot.data;
              return products == null || products.isEmpty
                  ? const Center(
                      child: Text("Mahsulotlar mavjud emas"),
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: FadeInImage.assetNetwork(
                                  placeholder: "gifs/load.jpg",
                                  image: product.imageUrl,
                                  imageErrorBuilder:
                                      (context, error, stackTrace) {
                                    return Image.network(products[3].imageUrl);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(product.price.toString()),
                              SizedBox(
                                height: 10,
                              ),
                              Text(product.title),
                              SizedBox(
                                height: 10,
                              ),
                              Text(product.category),
                            ],
                          ),
                        );
                      });
            }),
      ),
    );
  }
}
