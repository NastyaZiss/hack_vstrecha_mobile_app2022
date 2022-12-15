import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hack_app/const/global_color.dart';
import 'package:hack_app/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const AssetImage logo_splash = AssetImage('assets/img/logo.png');
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> HomeScreen()));
    });
    return Scaffold(
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
