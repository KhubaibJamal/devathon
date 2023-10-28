import 'package:devathon/screens/sign_in/sign_in_screen.dart';
import 'package:devathon/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
