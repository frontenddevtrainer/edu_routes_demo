import 'package:flutter/material.dart';

class ApplicationAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const ApplicationAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: false,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
