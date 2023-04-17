import 'package:flutter/material.dart';

import 'application_appbar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ApplicationAppBar(
          title: "Checkout",
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        body: Text("Hello world"));
  }
}
