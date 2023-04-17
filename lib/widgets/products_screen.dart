import 'package:edu_routes_demo/widgets/application_drawer.dart';
import 'package:flutter/material.dart';
import 'application_appbar.dart';

// /products
// {
//   name: "",
//   id: ""
// }

// products/id

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const ApplicationAppBar(title: "Products"),
        drawer: const ApplicationDrawer(),
        body: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/product-details",
                    arguments: {'id': 1});
              },
              title: const Text("Macbook Pro 14"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/product-details",
                    arguments: {'id': 2});
              },
              title: const Text("iPhone 14"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/product-details",
                    arguments: {'id': 3});
              },
              title: const Text("iPhone 14 Pro"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/product-details",
                    arguments: {'id': 4});
              },
              title: const Text("iPhone 14 Pro Max"),
            )
          ],
        ));
  }
}
