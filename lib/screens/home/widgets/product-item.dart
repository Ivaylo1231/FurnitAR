import 'package:flutter/material.dart';
import 'package:furnitar/core/product-model.dart';
import 'package:furnitar/screens/product/product.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;

  const ProductItem({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: GridTile(
        footer: Material(
          color: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
          ),
          clipBehavior: Clip.antiAlias,
          child: GridTileBar(
            backgroundColor: Colors.black45,
            title: _ProductItemTitleText(productModel.name),
            subtitle: _ProductItemTitleText(productModel.price),
          ),
        ),
        child: productModel.image,
      ),
      enableFeedback: true,
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProductScreen(
            productModel: productModel,
          ),
        ),
      ),
    );
  }
}

class _ProductItemTitleText extends StatelessWidget {
  final String text;

  const _ProductItemTitleText(this.text);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(text),
    );
  }
}
