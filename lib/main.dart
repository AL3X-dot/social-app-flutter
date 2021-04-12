import 'package:flutter/material.dart';
import 'package:social_app/constant/Constantcolors.dart';
import 'package:social_app/screens/splashscreen/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConstantColors colors = ConstantColors();
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: colors.blueColor,
        fontFamily: 'Poppins',
        canvasColor: colors.transperant,
        ),
    );
  }
}
