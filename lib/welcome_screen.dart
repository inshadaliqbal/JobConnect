import 'package:flutter/material.dart';
import 'package:luxuryguide/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const welcome_screen = 'WelcomeScreen';

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(minHeight: 200, minWidth: 150),
              child: Image(
                image: AssetImage('assets/images/welcomepageimage.jpg'),
              ),
            ),
            Text(
              'Connect with your field',
              style: TextStyle(
                  fontSize: 20, color: Colors.black, letterSpacing: 2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: MaterialStatePropertyAll(
                      BorderSide(color: Colors.black, width: 2),
                    ),
                    overlayColor: MaterialStatePropertyAll(Colors.black),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    fixedSize: MaterialStatePropertyAll(
                      Size(140, 50),
                    ),
                    elevation: MaterialStatePropertyAll(5),
                    backgroundColor: MaterialStatePropertyAll(Colors.white24),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.loginScreen);
                  },
                  style: ButtonStyle(
                    side: MaterialStatePropertyAll(
                      BorderSide(color: Colors.black, width: 2),
                    ),
                    overlayColor: MaterialStatePropertyAll(Colors.black),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    fixedSize: MaterialStatePropertyAll(
                      Size(140, 50),
                    ),
                    elevation: MaterialStatePropertyAll(5),
                    backgroundColor: MaterialStatePropertyAll(Colors.white24),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 4,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
