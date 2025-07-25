import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String imagePath;
  const CardImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 140),
      child: Image.asset(
        imagePath,
        // height: 110,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
