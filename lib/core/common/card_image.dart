import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String imagePath;
  const CardImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 220),
      child: Image.asset(
        imagePath,
        width: MediaQuery.of(context).size.width / 3 - (32 / 3),
      ),
    );
  }
}
