import 'package:flutter/material.dart';
import 'package:shopui/models/product.dart';
import 'package:shopui/screens/details/details_body.dart';

class ColorAndSize extends StatelessWidget {
  final Product? product;
  const ColorAndSize({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Colors.blue,
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Colors.amber,
                  ),
                  ColorDot(
                    color: Colors.pink,
                  ),
                ],
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(text: "Size\n"),
              TextSpan(
                  text: "${product!.size} cm",
                  style:
                      Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ],
    );
  }
}