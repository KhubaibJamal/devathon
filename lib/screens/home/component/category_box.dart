import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const.dart';

class CategoryBox extends StatelessWidget {
  final String category;
  final String icon;
  const CategoryBox({
    super.key,
    required this.category,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          child: SvgPicture.asset(
            icon,
          ),
        ),
        Text(
          category,
          style: const TextStyle(color: textColor),
        ),
      ],
    );
  }
}
