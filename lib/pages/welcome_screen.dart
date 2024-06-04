import 'package:flutter/material.dart';
import 'package:luxuryguide/style/constants.dart';
import 'package:luxuryguide/pages/login_screen.dart';
import '../widgets/extracted_widget.dart';

class WelcomeScreen extends StatelessWidget {
  static const welcome_screen = 'WelcomeScreen';

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: const BoxConstraints(minHeight: 200, minWidth: 150),
              child: const Image(
                image: AssetImage('assets/images/welcomepageimage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Network Elegantly with Professionals in Your Field',
              style: kWelcomeScreenTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainButton(title: 'Sign In', buttonFunction: (){}),
                  const SizedBox(width: 20),
                  MainButton(title: 'Sign Up',buttonFunction: (){
                    Navigator.pushNamed(context, LoginScreen.loginScreen);
                  },),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
