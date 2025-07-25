import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String imagePath;
  final double mHeight;
  const CardImage({super.key, required this.imagePath, this.mHeight = 140});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: mHeight),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        child: Image.asset(
          imagePath,
          // height: 110,
          fit: BoxFit.cover,

          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
