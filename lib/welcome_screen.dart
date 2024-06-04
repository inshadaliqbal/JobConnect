import 'package:flutter/material.dart';
import 'package:luxuryguide/login_screen.dart';
import 'extracted_widget.dart';

class WelcomeScreen extends StatelessWidget {
  static const welcome_screen = 'WelcomeScreen';

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(minHeight: 200, minWidth: 150),
              child: Image(
                image: AssetImage('assets/images/welcomepageimage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Network Elegantly with Professionals in Your Field',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MainButton(title: 'Sign In', buttonFunction: (){}),
                  SizedBox(width: 20),
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
