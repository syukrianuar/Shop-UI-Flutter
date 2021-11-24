import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopui/models/product.dart';
import 'package:shopui/screens/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  const DetailsScreen({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product!.color,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset('assets/icons/back.svg')),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/search.svg')),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/cart.svg')),
        ],
      ),
      body: DetailsBody(product: product),
    );
  }
}
