import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ApplicationAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget leading; 
  const ApplicationAppBar({super.key, required this.title, this.leading = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset("ADD_PATH_TO_SVG", height: 32, width: 64, semanticsLabel: "Application logo."),
      centerTitle: false,
      automaticallyImplyLeading: false,
      leading: leading,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}