import 'package:flutter/material.dart';
import 'package:shopui/models/product.dart';

// ignore: must_be_immutable
class ItemCard extends StatelessWidget {
  Product? product;
  VoidCallback? press;
  ItemCard({
    Key? key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 200,
            width: 160,
            decoration: BoxDecoration(
                color: product!.color, borderRadius: BorderRadius.circular(16)),
            child: Image.asset(product!.image!),
          ),
          Text("${product!.title}"),
          Text("\$${product!.price}"),
        ],
      ),
    );
  }
}
