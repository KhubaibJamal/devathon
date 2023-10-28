import 'package:devathon/components/default_button.dart';
import 'package:devathon/screens/sign_in/sign_in_screen.dart';
import 'package:devathon/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: SizeConfig.screenWidth! / 2,
              child: DefaultButton(
                  text: "Sign Out",
                  press: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
