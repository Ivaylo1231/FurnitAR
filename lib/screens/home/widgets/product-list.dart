import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:furnitar/core/product-model.dart';
import 'package:furnitar/screens/home/widgets/product-item.dart';
import 'package:vector_math/vector_math_64.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          ProductItem(
            productModel: ProductModel(
              name: "Omles",
              price: "\$0.99",
              image: Image(image: AssetImage('assets/omles.png')),
              model: ARNode(
                type: NodeType.webGLB,
                uri: "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Duck/glTF-Binary/Duck.glb",
                scale: Vector3(0.2, 0.2, 0.2),
                position: Vector3(0.0, 0.0, 0.0),
                rotation: Vector4(1.0, 0.0, 0.0, 0.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
