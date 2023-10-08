import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagarm_clone/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pinkAccent,
        child: Center(
          child: Container(
            child: Image.asset("assets/images/instagram.jpeg"),),
        ),
      ),
    );
  }
}