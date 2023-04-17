import 'package:flutter/material.dart';

import 'application_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ApplicationAppBar(title: "Profile"),
        body: Text("Hello world"));
  }
}
