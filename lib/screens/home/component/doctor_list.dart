import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class DoctorList extends StatelessWidget {
  final String drName;
  final String field;
  final VoidCallback press;
  const DoctorList({
    super.key,
    required this.drName,
    required this.field,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/Rectangle 2.png',
            ),
            SizedBox(height: getProportionateScreenWidth(15)),
            const Row(
              children: [
                Icon(Icons.star, color: purpleColor),
                Text("4.5"),
              ],
            )
          ],
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(drName, style: defaultTextStyle),
            SizedBox(height: getProportionateScreenWidth(5)),
            Text(
              field,
              style: TextStyle(
                color: Colors.grey,
                fontSize: getProportionateScreenWidth(15),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(10)),
            SizedBox(
              width: SizeConfig.screenWidth! / 2.5,
              child: DefaultButton(
                text: "Appointment",
                backgroundColor: textFieldColor,
                textColor: textColor,
                press: press,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
