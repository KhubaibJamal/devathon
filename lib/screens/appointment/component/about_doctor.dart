import 'package:devathon/size_config.dart';
import 'package:flutter/material.dart';

import '../../../const.dart';

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Doctor",
          style: defaultTextStyle.copyWith(color: textColor),
        ),
        SizedBox(height: getProportionateScreenWidth(10)),
        Text(
          "Dr. Maria Waston is the top most Cardiologist specialist in Nanyang Hospotalat London. She is available for private consultation.",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
