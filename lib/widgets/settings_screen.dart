import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import 'application_appbar.dart';

import "package:fluttertoast/fluttertoast.dart";

class SettingsScreen extends StatelessWidget {
  SettingsScreen({
    super.key,
  });

  final List<String> images = [
    "https://picsum.photos/seed/image1/200/300",
    "https://picsum.photos/seed/image2/200/300,"
        "https://picsum.photos/seed/image3/200/300",
    "https://picsum.photos/seed/image4/200/300"
  ];

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
        body: Column(
          children: [
            Expanded(
              child: Swiper(
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.network(images[index]);
                },
                autoplay: true,
                control: const SwiperControl(),
                pagination: SwiperPagination(builder: SwiperPagination.dots),
              ),
            ),
            ElevatedButton(
              child: Text("Click"),
              onPressed: () {
                Fluttertoast.showToast(
                    msg: "Hello world!!!",
                    backgroundColor: Colors.blueAccent,
                    textColor: Colors.amber,
                    toastLength: Toast.LENGTH_LONG);
              },
            )
          ],
        ));
  }
}
