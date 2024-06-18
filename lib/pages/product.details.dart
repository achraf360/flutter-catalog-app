import 'dart:convert';

import 'package:catalog_app/pages/products.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductDetails extends StatefulWidget {
  final String productId;

  ProductDetails({super.key, required this.productId});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  dynamic product = null;
  @override
  void initState() {
    super.initState();
    http
        .get(Uri.parse(
            "http://192.168.162.245:9000/products/?id=${widget.productId}"))
        .then((resp) {
      setState(() {
        product = json.decode(resp.body);
      });
      print("product : ${product}");
    }).catchError((err) {
      print("******* Error ******");
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: product != null // Check if product is not null
            ? ProductItem(
                product: product[0],
                details: true,
              )
            : const Text('Loading product details...'), // Show loading message
      ),
    );
  }
}
