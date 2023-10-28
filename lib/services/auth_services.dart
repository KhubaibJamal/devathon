import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  // auth instance
  static FirebaseAuth auth = FirebaseAuth.instance;

  static late UserCredential userCredential;

  // sign in with email
  static Future<void> signIn(String email, String password) async {
    try {
      // user credential instance
      userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // if user is not register
        print('No user found for that email.');
      }
    }
  }

  // sign up with email
  static Future<void> signUp(String email, String password) async {
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('Password is weak');
      } else if (e.code == 'email-already-in-use') {}
      print('Email already use');
    }
  }
}
