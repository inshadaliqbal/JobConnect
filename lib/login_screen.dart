import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:luxuryguide/constants.dart';
import 'package:luxuryguide/extracted_widget.dart';
import 'package:luxuryguide/home_screen.dart';
import 'package:luxuryguide/widgets.dart';

class LoginScreen extends StatelessWidget {
  static const String loginScreen = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildWelcomeSection(context),
            buildLoginSection(context),
            buildSocialLoginSection(context),
          ],
        ),
      ),
    );
  }
}
