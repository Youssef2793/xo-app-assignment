import 'package:flutter/material.dart';
import 'package:ox_app/homescreen.dart';
import 'package:ox_app/playersname.dart';
import 'xo_app.dart';
void main() {
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
      
     routes: {
      PlayersName.routname:(BuildContext)=>PlayersName(),
      XO_app.routname :(BuildContext)=> XO_app(),
      HomeScreen.routname:(BuildContext)=>HomeScreen(),
     },
     initialRoute: XO_app.routname,
    );
  }
}

