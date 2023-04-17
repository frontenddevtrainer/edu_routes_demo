import 'package:flutter/material.dart';

class ApplicationDrawer extends StatelessWidget {
  const ApplicationDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/products");
          },
          title: const Text("Products"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/profile");
          },
          title: const Text("Profile"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/checkout");
          },
          title: const Text("Checkout"),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/settings");
          },
          title: const Text("Settings"),
        ),
      ],
    ));
  }
}
