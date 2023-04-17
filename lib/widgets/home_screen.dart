import 'package:edu_routes_demo/widgets/application_drawer.dart';
import 'package:flutter/material.dart';

import 'application_appbar.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: ApplicationAppBar(
          title: "Welcome",
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: ApplicationDrawer(),
        body: Text("Hello world"));
  }
}
