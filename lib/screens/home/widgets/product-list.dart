import 'dart:convert';

import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furnitar/core/product-model.dart';
import 'package:furnitar/screens/home/widgets/product-item.dart';
import 'package:vector_math/vector_math_64.dart';

class ProductList extends StatefulWidget {
  ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  Future<List<ProductModel>> _getProducts() async {
    return ProductModel.fromMapList(
      List<Map<String, dynamic>>.from(
        jsonDecode(await rootBundle.loadString('assets/products.json')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>>(
      future: _getProducts(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        return Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: snapshot.data!
              .map<Widget>(
                (productModel) => ProductItem(productModel: productModel),
              )
            .toList(),
          ),
        );
      }
    );
  }
}
