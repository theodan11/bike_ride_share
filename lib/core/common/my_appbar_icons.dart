import 'package:flutter/material.dart';

class MyAppbarIconButton extends StatelessWidget {
  final IconData iconData;

  const MyAppbarIconButton({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        iconData,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}
