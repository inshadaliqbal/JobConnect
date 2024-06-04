

import 'package:flutter/material.dart';


class MainButton extends StatelessWidget {

  String? title;
  Function? buttonFunction;
  MainButton({
    super.key,@required this.title,@required this.buttonFunction
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.pink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          buttonFunction!();
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          // backgroundColor: Colors.white, // For the text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          title!,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 4,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}

class buildSocialButton extends StatelessWidget {
  const buildSocialButton({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[200],
      ),
      child: Image.asset(imagePath),
    );
  }
}


class MainTextField extends StatelessWidget {
  String? hintText;
  Function? textfieldFunction;
  MainTextField({
    super.key,@required this.hintText,@required  this.textfieldFunction
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        textfieldFunction!(value);
      },
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}


