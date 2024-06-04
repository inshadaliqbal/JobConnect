import 'package:flutter/material.dart';
import 'package:luxuryguide/home_screen.dart';
import 'package:luxuryguide/login_screen.dart';
import 'package:luxuryguide/welcome_screen.dart';

void main() {
  runApp(const LuxuryGuide());
}


class LuxuryGuide extends StatelessWidget {
  const LuxuryGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.welcome_screen,
      routes: {
        WelcomeScreen.welcome_screen: (context)=> WelcomeScreen(),
        LoginScreen.loginScreen: (context) => LoginScreen(),
        HomeScreen.homeScreen: (context) => HomeScreen()
      },
    );
  }
}

