import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:luxuryguide/extracted_widget.dart';
import 'package:luxuryguide/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const loginScreen = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                  Text(
                    'Welcome back, your people are missing you!',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  MainTextField(hintText: 'Email',textfieldFunction: (){},),
                  SizedBox(height: 20),
                  MainTextField(hintText: 'Password',textfieldFunction: (){},),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MainButton(title: 'Sign In', buttonFunction: () {
                    Navigator.pushNamed(context, HomeScreen.homeScreen);
                  }),
                  SizedBox(height: 20,),
                  Center(
                    child: Text(
                      'Or Continue With',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildSocialButton(imagePath: 'assets/logo/google.png'),
                      buildSocialButton(imagePath: 'assets/logo/apple.png'),
                      buildSocialButton(imagePath: 'assets/logo/facebook.png'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
