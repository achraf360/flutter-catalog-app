import 'package:catalog_app/pages/product.details.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool details;
  ProductItem({super.key, required this.product, required this.details});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${product["name"]}"),
                            Text("${product['price']}" " DH"),
                            if (product['promotion'] == true)
                              const Icon(
                                Icons.discount,
                                color: Colors.red,
                              ),
                            Row(
                              children: [
                                for (int i = 0; i < product['stars']; i++)
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails(
                                    productId: product['id'],
                                  )));*/
                      Navigator.pushNamed(context, "/productDetails",
                          arguments: product['id']);
                    },
                    child: Image(
                      image: AssetImage("${product['image']}"),
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),
            if (details == true)
              Card(
                child: Text("${product['description']}"),
              )
          ],
        ),
      ),
    );
  }
}
