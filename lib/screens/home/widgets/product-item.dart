import 'package:flutter/material.dart';
import 'package:furnitar/core/product-model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;

  const ProductItem({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
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
    );
  }
}

class _ProductItemTitleText extends StatelessWidget {
  const _ProductItemTitleText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(text),
    );
  }
}