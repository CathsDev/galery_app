import 'package:flutter/material.dart';

class GalleryAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const GalleryAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(96, 3, 49, 1),
      centerTitle: true,
      title: Text(title, style: TextStyle(color: Colors.white)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
