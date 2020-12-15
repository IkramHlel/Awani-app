import 'dart:async';

import '../services/productService.dart';
import '../models/product.dart';

class ProductBloc {
    ProductService productService = ProductService();
    List<Product> productResult;

      final _products = StreamController<List<Product>>();
  Stream<List<Product>> get productsStream => _products.stream;
  StreamSink<List<Product>> get productsSink => _products.sink;

     Future fetchProduct() async {
    productResult =
        await productService.fetchProducts();
    productsSink.add(productResult);
  }
}
