import 'package:flutter/material.dart';
import 'package:luxuryguide/pages/home_screen.dart';
import 'package:luxuryguide/pages/job_page.dart';
import 'package:luxuryguide/pages/login_screen.dart';
import 'package:luxuryguide/pages/welcome_screen.dart';

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
        HomeScreen.homeScreen: (context) => HomeScreen(),
        JobPage.jobPage: (context)=> JobPage(),
      },
    );
  }
}

