import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../const.dart';
import '../../../size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // email
            SizedBox(height: getProportionateScreenWidth(20)),
            Text(
              "Your Email:",
              style: TextStyle(
                color: Colors.grey,
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              decoration: customInputDecoration(
                hintText: "email@example.com",
                icon: Icons.email,
              ),
            ),

            // password
            SizedBox(height: getProportionateScreenWidth(20)),
            Text(
              "Your Password:",
              style: TextStyle(
                color: Colors.grey,
                fontSize: getProportionateScreenWidth(20),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              obscureText: true,
              decoration: customInputDecoration(
                hintText: "********",
                icon: Icons.lock,
              ),
            ),

            // defult button
            SizedBox(height: getProportionateScreenWidth(20)),
            DefaultButton(
              text: "Login",
              borderRadius: 20,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
