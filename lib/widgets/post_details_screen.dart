import 'package:edu_routes_demo/widgets/application_drawer.dart';
import 'package:flutter/material.dart';

import 'application_appbar.dart';

class PostDetailsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PostDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments;
    
    return Scaffold(
        key: _scaffoldKey,
        appBar: ApplicationAppBar(
          title: "Post",
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
