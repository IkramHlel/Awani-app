import 'package:flutter/material.dart';

class Product {
  final String image;
  final String type;
  final int quantity;

  Product(this.image,this.type,this.quantity);

  String get getImage {
    return image;
  }
  String get getType {
    return type;
  }
  int get getQuantity {
    return quantity;
  }
}
