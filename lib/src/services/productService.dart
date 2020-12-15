import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/product.dart';

class ProductService {
  Future fetchProducts() async {
    http.Response response;
    List<Product> productsList = [];
    const url = "https://awaniapp-141a0.firebaseio.com/Products.json?";
    response = await http.get(url);
    final List<dynamic> responseData = json.decode(response.body);
    //print('****${responseData}');
    responseData.forEach((element) {
      final Product product =
          Product(element['image'], element['type'], element['quantity']);
      productsList.add(product);
    });
    return productsList;
  }
}
