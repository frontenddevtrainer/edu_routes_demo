import 'package:edu_routes_demo/widgets/application_drawer.dart';
import 'package:flutter/material.dart';

import 'application_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: ApplicationAppBar(title: "Welcome"),
        drawer: ApplicationDrawer(),
        body: Text("Hello world"));
  }
}
