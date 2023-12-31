import 'package:devathon/const.dart';
import 'package:devathon/screens/sign_in/sign_in_screen.dart';
import 'package:devathon/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_image.dart';
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Text
                    Text("Registration", style: defaultTextStyle),
                    SizedBox(height: getProportionateScreenWidth(20)),
                    const SignUpForm(),
                    SizedBox(height: getProportionateScreenWidth(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          },
                          child: const Text(
                            "Sign in.?",
                            style: TextStyle(
                              color: blueColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
