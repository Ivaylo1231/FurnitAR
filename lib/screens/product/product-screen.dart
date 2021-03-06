import 'package:flutter/material.dart';

import '../../core/product-model.dart';
import 'widgets/ar-furniture.dart';

class ProductScreen extends StatelessWidget {
  final ProductModel productModel;
  const ProductScreen({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FurnitAR"),
      ),
      body: Column(
        children: <Widget>[
          ARFurniture(
            model: this.productModel.model,
          ),
        ],
      ),
    );
  }
}
