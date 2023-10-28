import 'package:devathon/route.dart';
import 'package:devathon/screens/sign_up/sign_up_screen.dart';
import 'package:devathon/theme.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Devathon',
        theme: theme(),
        initialRoute: SignUpScreen.routeName,
        routes: routes,
      ),
    );
  }
}
