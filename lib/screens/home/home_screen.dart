import 'package:devathon/const.dart';
import 'package:devathon/screens/home/component/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: purpleColor,
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Icon(Icons.menu_sharp),
            Spacer(),
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                'assets/images/Rectangle 2.png',
              ),
            )
          ],
        ),
      ),
      body: const Body(),
    );
  }
}
