import 'package:devathon/components/default_button.dart';
import 'package:devathon/size_config.dart';
import 'package:flutter/material.dart';

import '../../../const.dart';
import '../../../services/auth_services.dart';
import '../../home/home_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // name
          Text(
            "Your Name:",
            style: TextStyle(
              color: Colors.grey,
              fontSize: getProportionateScreenWidth(20),
            ),
          ),
          const SizedBox(height: 5),
          TextFormField(
            decoration: customInputDecoration(
              hintText: "Enter Your Full Name",
              icon: Icons.person,
            ),
          ),

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
            controller: emailController,
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
            controller: passwordController,
            obscureText: true,
            decoration: customInputDecoration(
              hintText: "********",
              icon: Icons.lock,
            ),
          ),

          // defult button
          SizedBox(height: getProportionateScreenWidth(20)),
          DefaultButton(
            text: "Create an Account",
            borderRadius: 20,
            press: () {
              AuthServices.signUp(
                  emailController.text, passwordController.text);
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
