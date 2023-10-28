import 'package:devathon/screens/sign_in/component/sign_in_form.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_image.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: Column(
          children: [
            // image
            const Expanded(
              child: CustomImage(),
            ),
            SizedBox(height: getProportionateScreenWidth(30)),

            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // Text
                  Text("Login", style: defaultTextStyle),
                  SizedBox(height: getProportionateScreenWidth(30)),
                  const SignInForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
