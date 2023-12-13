import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final IconData? actionIcon;
  final String title;
  const AppBarWidget({
    super.key,
    this.actionIcon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu_rounded,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.yellow,
      title: Text(
        title,
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            actionIcon,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
