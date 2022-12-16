import 'package:flutter/material.dart';

class CreatScreen extends StatefulWidget {
  const CreatScreen({Key? key}) : super(key: key);

  @override
  State<CreatScreen> createState() => _CreatScreenState();
}

class _CreatScreenState extends State<CreatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

// Navigator.pushReplacement(context,
//     MaterialPageRoute(builder: (context)=>
//     if ((user==null)) {
//       Navigator.push(context,
//           MaterialPagRoute(bulder: ((context) => RegistrScreen())),
//       );
//     } else {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           bulder:((context) => const HomeScreen())
//         )
//        )
//      };
//     }
//         RegistrScreen()
//     )));