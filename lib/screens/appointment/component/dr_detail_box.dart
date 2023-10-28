import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class DrDetailBox extends StatelessWidget {
  const DrDetailBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(110),
      width: SizeConfig.screenWidth!,
      padding: EdgeInsets.all(getProportionateScreenWidth(8)),
      decoration: BoxDecoration(
        color: purpleColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBox(
              count: "350+", textColor: purpleColor, subtitle: "Patients"),
          CustomBox(
              count: "15+",
              textColor: Color(0xFF9DEAC0),
              subtitle: "Exp. years"),
          CustomBox(
              count: "284+", textColor: Color(0xFFFF9A9A), subtitle: "Reviews"),
        ],
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final String count;
  final String subtitle;
  final Color textColor;
  const CustomBox({
    super.key,
    required this.count,
    required this.textColor,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(90),
      width: getProportionateScreenWidth(90),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: defaultTextStyle.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
