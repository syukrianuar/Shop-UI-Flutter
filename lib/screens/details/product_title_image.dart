// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopui/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "this is pilah",
            style: TextStyle(color: Colors.white),
          ),
          Text("${product!.title}",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Price\n"),
                  TextSpan(
                      text: "\$${product!.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Image.asset(
                  "${product!.image}",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
