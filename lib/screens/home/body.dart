import 'package:flutter/material.dart';
import 'package:shopui/models/product.dart';
import 'package:shopui/screens/home/categories.dart';
import 'package:shopui/screens/details/details.dart';
import 'package:shopui/screens/home/item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Women", style: Theme.of(context).textTheme.headline5),
        ),
        const Categories(),
        Flexible(
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.8),
                itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(product: products[index])));
                    }))),
      ],
    );
  }
}
