import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final String name;
  final String price;
  final Image image;
  final ARNode model;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.model,
  });
}
