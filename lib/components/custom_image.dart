import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          scale: 1.5,
          image: AssetImage(
            'assets/images/splash_3.png',
          ),
        ),
      ),
    );
  }
}
