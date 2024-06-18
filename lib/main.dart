import 'package:catalog_app/pages/home.page.dart';
import 'package:catalog_app/pages/product.details.dart';
import 'package:catalog_app/pages/products.page.dart';
import 'package:catalog_app/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.themes[0],
      routes: {
        "/home": (context) => const HomePage(),
        "/products": (context) => const ProductsPage(),
        "/productDetails": (context) => ProductDetails(
              productId: ModalRoute.of(context)!.settings.arguments as String,
            ),
      },
      initialRoute: "/home",
    );
  }
}
