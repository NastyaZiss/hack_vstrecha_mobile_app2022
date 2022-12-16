import 'package:flutter/material.dart';
import 'package:hack_app/const/global_color.dart';

class RegistrScreen extends StatefulWidget {
  const RegistrScreen({Key? key}) : super(key: key);

  @override
  State<RegistrScreen> createState() => _RegistrScreenState();
}

class _RegistrScreenState extends State<RegistrScreen> {
  static const AssetImage logo_registr = AssetImage('assets/img/logo.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(child: ImageIcon(logo_registr,size: 20,),), // image logo
            Container(child: Text("Авторизация", style: AppStyleText.textStyle_1,),), // text avto
            Container(), // input
            Container(), // button
          ],
        ),
      ),
    );
  }
}
