// import 'package:devathon/screens/appointment/appointment_screen.dart';
import 'package:devathon/screens/home/home_screen.dart';
import 'package:devathon/screens/sign_in/sign_in_screen.dart';
import 'package:devathon/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  // AppointmentScreen.routeName: (context) => const AppointmentScreen(),
};
