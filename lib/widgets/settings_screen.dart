import 'package:flutter/material.dart';

import 'application_appbar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ApplicationAppBar(title: "Settings"),
        body: Text("Hello world"));
  }
}
