import 'package:devathon/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
