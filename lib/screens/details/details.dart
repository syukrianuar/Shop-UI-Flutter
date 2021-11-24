import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopui/models/product.dart';

class DetailsScreen extends StatelessWidget {
  Product? product;
  DetailsScreen({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color,
      appBar: AppBar(
        backgroundColor: product!.color,
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/back.svg')),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/searc.svg')),
          IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/icons/cart.svg')),
        ],
      ),
    );
  }
}
