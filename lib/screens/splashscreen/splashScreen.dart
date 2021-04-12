import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:social_app/constant/Constantcolors.dart';
import 'package:social_app/screens/landingpage/landingPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
        Duration(seconds: 1), () => Navigator.pushReplacement(context,PageTransition(child: LandingPage(), type: PageTransitionType.bottomToTop )));
  }

  @override
  Widget build(BuildContext context) {
    ConstantColors colors = ConstantColors();
    return Scaffold(
      backgroundColor: colors.darkColor,
      body: Center(
        child: RichText(
          text: TextSpan(
              text: 'the',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: colors.whiteColor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'Social',
                    style: TextStyle(
                        color: colors.blueColor,
                        fontSize: 35,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold)),
              ]),
        ),
      ),
    );
  }
}
