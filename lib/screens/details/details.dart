import 'package:flutter/material.dart';
import 'package:shopui/models/product.dart';

class DetailsScreen extends StatelessWidget {
  Product? product;
  DetailsScreen({ Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color,
    );
  }
}

