import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/Home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer( Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  HomeScreen()),
      );
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFF6F6F),
              Color(0xFFE00000),
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            //////////////=======Logo========================//////
            Positioned(
              top: 282,
              left: 129,
              right: 129,
              child: Image.asset("assets/images/Foodgo.png",
              height: 75,
              width: 172,
              ),
            ),
            Positioned(
              top: 681,
              left: -220,
              right: 0,
              child: Image.asset("assets/images/h2.png",
                height: 238,
                width: 246,
              ),
            ),
            Positioned(
              top: 758,
              left: 40,
              right: 0,
              child: Image.asset("assets/images/h1.png",
                height: 158,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
