import 'package:devathon/const.dart';
import 'package:devathon/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

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
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    scale: 1.5,
                    image: AssetImage(
                      'assets/images/splash_3.png',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(30)),

            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // Text
                  Text("Registration", style: defaultTextStyle),
                  SizedBox(height: getProportionateScreenWidth(20)),
                  const SignUpForm()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
