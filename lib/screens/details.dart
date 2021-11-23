import 'package:flutter/material.dart';
import 'package:shopui/models/product.dart';

class DetailsScreen extends StatefulWidget {
  final Product? product;
  const DetailsScreen({Key? key, this.product}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
