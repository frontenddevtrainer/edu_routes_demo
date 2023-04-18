import 'package:flutter/material.dart';

import 'application_appbar.dart';
import "package:webview_flutter/webview_flutter.dart";
import "package:url_launcher/url_launcher.dart";

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
      // ..loadRequest(Uri.parse("https://fir-project-dac36.firebaseapp.com"))
      // ..setNavigationDelegate(NavigationDelegate(
      //   onNavigationRequest: (request) => ,
      // ))
      ..loadHtmlString("<a href='tel:8942343243'>hello world this is a HTML string<a>")
      // ..loadFlutterAsset(key)
      ..setNavigationDelegate(NavigationDelegate(
        onNavigationRequest: (request) async {
          final url = Uri.parse(request.url);

          if(url.scheme == "tel" && await canLaunchUrl(url)) {
              await launchUrl(url);
          }
    
          return NavigationDecision.prevent;
        },
      ));

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
