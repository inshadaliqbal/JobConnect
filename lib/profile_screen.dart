import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const profileScreen = 'ProfileScreen';
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
    );
  }
}
