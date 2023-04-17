import 'package:flutter/material.dart';

class ApplicationAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget leading; 
  const ApplicationAppBar({super.key, required this.title, this.leading = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: false,
      automaticallyImplyLeading: false,
      leading: leading,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}