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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  ProductsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: ApplicationAppBar(
          title: "Products",
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
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
