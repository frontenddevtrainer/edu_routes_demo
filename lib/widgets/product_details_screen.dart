import 'package:edu_routes_demo/widgets/application_drawer.dart';
import 'package:flutter/material.dart';

import 'application_appbar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;

    print(data);

    return const Scaffold(
        appBar: ApplicationAppBar(title: "Product"),
        drawer: ApplicationDrawer(),
        body: Text("Hello world"));
  }
}
