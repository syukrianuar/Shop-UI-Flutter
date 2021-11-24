// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shopui/models/product.dart';

class DetailsBody extends StatelessWidget {
  final Product? product;
  const DetailsBody({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "this is pilah",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("${product!.title}")
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}