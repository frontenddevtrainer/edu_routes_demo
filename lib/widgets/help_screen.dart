import 'package:flutter/material.dart';

import 'application_appbar.dart';
import "package:webview_flutter/webview_flutter.dart";

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  late final WebViewController _controller;

  void initState() {
    super.initState();
    _controller = WebViewController()
      ..loadRequest(Uri.parse("https://fir-project-dac36.firebaseapp.com"));
      // ..loadHtmlString("<h1>hello world this is a HTML string<h1>");
      // ..loadFlutterAsset(key)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ApplicationAppBar(
          title: "Settings",
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        body: WebViewWidget(
          controller: _controller,
        ));
  }
}
