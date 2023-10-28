import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../size_config.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(22),
        vertical: getProportionateScreenWidth(15),
      ),
      width: SizeConfig.screenHeight!,
      decoration: const BoxDecoration(
        color: purpleColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome",
            style: defaultTextStyle.copyWith(
              color: whiteColor,
              fontSize: getProportionateScreenWidth(30),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(10)),
          Text(
            "Let's find\nyou top Doctor! ",
            style: defaultTextStyle.copyWith(
              color: whiteColor,
              fontSize: getProportionateScreenWidth(30),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(15)),
          Text(
            "Doctor's Inn ",
            style: defaultTextStyle.copyWith(
              color: whiteColor,
              fontSize: getProportionateScreenWidth(30),
            ),
          ),
        ],
      ),
    );
  }
}
