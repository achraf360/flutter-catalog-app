import 'dart:convert';

import 'package:catalog_app/pages/product.details.dart';
import 'package:catalog_app/pages/products.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://192.168.162.245:9000/products")).then((resp) {
      setState(() {
        products = json.decode(resp.body);
      });
    }).catchError((err) {
      print("******* Error ******");
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ProductItem(
            product: products[index],
            details: false,
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
