import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/const/global_color.dart';
import 'package:hack_app/screen/home_screen.dart';
import 'package:hack_app/screen/registr_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const AssetImage logo_splash = AssetImage('assets/img/logo.png');
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context)=> (RegistrScreen())));
    });

      //   Widget build(BuildContext context) {
      // Timer(Duration(seconds: 3), () {
      //   Navigator.pushReplacement(context,
      //       MaterialPageRoute(builder: (context)=> (RegistrScreen())));
      // });
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backg,
      body: Column(
        children: [
          Center(
            child: Container( child:
              ImageIcon(logo_splash, size: 23,)
            )
        )],
      ),
    );
  }
}
