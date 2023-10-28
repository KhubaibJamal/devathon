import 'package:devathon/const.dart';
import 'package:devathon/screens/doctors/doctors_screen.dart';
import 'package:devathon/screens/home/component/body.dart';
import 'package:devathon/screens/profile/profile.dart';
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
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DoctorsScreen()));
                },
                icon: Icon(Icons.menu_sharp)),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  'assets/images/Rectangle 2.png',
                ),
              ),
            )
          ],
        ),
      ),
      body: const Body(),
    );
  }
}
