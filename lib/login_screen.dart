import 'package:flutter/material.dart';
import 'package:luxuryguide/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const loginScreen = 'LoginScreen';

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Hello Again',
            style:
                TextStyle(fontSize: 20, color: Colors.black, letterSpacing: 2),
          ),
          Text(
            'Welcome back your people are missing you',
            style:
                TextStyle(fontSize: 15, color: Colors.black, letterSpacing: 2),
          ),
          TextField(
            onChanged: (value) {

            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white24,
              constraints: BoxConstraints(
                maxHeight: 50,
                maxWidth: 350,
              ),
              hintText: 'Email',
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            onChanged: (value) {
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white24,
              constraints: BoxConstraints(
                maxHeight: 50,
                maxWidth: 350,
              ),
              hintText: 'Password',
              contentPadding:
              EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(32.0)),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'Forgot your password',
                style:
                TextStyle(fontSize: 5, color: Colors.black, letterSpacing: 2),
              ),
            ],
          ),
          TextButton(
            onPressed: () {

              Navigator.pushNamed(context, HomeScreen.homeScreen);
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
              'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 4,
              ),
            ),
          ),
          Text(
            'Or Continue With',
            style:
            TextStyle(fontSize: 10, color: Colors.black, letterSpacing: 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.blueGrey,
                constraints: BoxConstraints(maxHeight: 50,maxWidth: 50),
                margin: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage(
                    'assets/logo/google.png'
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                constraints: BoxConstraints(maxHeight: 50,maxWidth: 50),
                margin: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage(
                      'assets/logo/apple.png'
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                constraints: BoxConstraints(maxHeight: 50,maxWidth: 50),
                padding: EdgeInsets.all(5),
                child: Image(
                  image: AssetImage(
                      'assets/logo/facebook.png'
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
