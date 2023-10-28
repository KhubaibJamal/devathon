import 'package:flutter/material.dart';
import 'category.dart';
import 'header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Header()),
        Expanded(flex: 2, child: Category()),
      ],
    );
  }
}
