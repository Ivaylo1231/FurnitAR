import 'package:flutter/material.dart';
import 'package:furnitar/core/product-model.dart';
import 'package:furnitar/screens/home/widgets/product-item.dart';

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
              modelPath: "",
            ),
          ),
        ],
      ),
    );
  }
}
