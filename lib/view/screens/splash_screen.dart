import 'dart:async';

import 'package:flutter/material.dart';

import 'package:learning_management_system/view/screens/sign_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SigninPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff004040),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/logo lms.png',
          ),
          const Positioned(
            top: 500,
            right: 80,
            child: Text(
              'Learning \n Management System',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
