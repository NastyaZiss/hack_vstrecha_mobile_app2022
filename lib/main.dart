import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hack_app/screen/card_screen.dart';
import 'package:hack_app/screen/creat_screen.dart';
import 'package:hack_app/screen/home_screen.dart';
import 'package:hack_app/screen/registr_screen.dart';
import 'package:hack_app/screen/slash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
        primarySwatch: Colors.blue,
      ),
      routes: {
        // (context )=> const FirebaseScreen(),
        'singup':(context)=> const RegistrScreen(),
        'login':(context)=> const HomeScreen(),
        'card':(context)=> const CardScreen(),
        'creat':(context)=> const CreatScreen(),
      },
      initialRoute: '/',
      home: const SplashScreen(),
    );
  }
}


