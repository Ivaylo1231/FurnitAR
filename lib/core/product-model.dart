import 'package:flutter/material.dart';

class ProductModel {
  final String name;
  final String price;
  final Image image;
  final String modelPath;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.modelPath,
  });
}
