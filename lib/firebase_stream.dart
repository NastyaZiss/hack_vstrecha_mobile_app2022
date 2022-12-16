import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/screen/home_screen.dart';
import 'package:hack_app/screen/verify_email_screen.dart';

class FirebaseStream extends StatelessWidget {
  const FirebaseStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if (snapshot.hasError) {
            return const Scaffold(
              body: Center(child: Text("error"),),
            );
          } else if (snapshot.hasData) {
            if(!snapshot.data!.emailVerified) {
              return const VerifyEmailScreen();
            }
            return const HomeScreen();
          } else {
            return const HomeScreen();
            }
          },
    );
  }
}
