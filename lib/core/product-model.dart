import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

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
  
  @override
  factory ProductModel.fromMap(Map<String, dynamic> map) {
    String name = map['name'];
    String price = map['price'];
    Image image = map['isLocal']
      ? Image(image: AssetImage(map['imagePath']))
      : Image.network(map['imagePath']);
    ARNode model = ARNode(
      type: map['isLocal'] ? NodeType.localGLTF2 : NodeType.webGLB,
      uri: map['modelPath'], 
      scale: Vector3(20, 20, 20),
      position: Vector3(0.0, 0.0, 0.0),
      rotation: Vector4(1.0, 0.0, 0.0, 0.0),
    );

    return ProductModel(
      name: name,
      price: price,
      image: image,
      model: model
    );
  }

  static List<ProductModel> fromMapList(List<Map<String, dynamic>> mapList) {
    List<ProductModel> products = [];
    mapList.forEach((mapItem) {
      products.add(ProductModel.fromMap(mapItem));
    });
    return products;
  }
}
