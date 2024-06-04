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
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(15),
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey.withOpacity(0.5),
              //       spreadRadius: 5,
              //       blurRadius: 7,
              //       offset: Offset(0, 3), // changes position of shadow
              //     ),
              //   ],
              // ),
            ),
            SizedBox(height: 30),
            Text(
              'Connect with your field',
              style: TextStyle(
                fontSize: 28,
                color: Colors.black87,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainButton(title: 'Sign In', buttonFunction: (){}),
                SizedBox(width: 20),
                MainButton(title: 'Sign Up',buttonFunction: (){
                  Navigator.pushNamed(context, LoginScreen.loginScreen);
                },),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
