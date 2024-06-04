import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxuryguide/additional_files.dart';
import 'package:luxuryguide/chats_screen.dart';
import 'package:luxuryguide/home_feed.dart';
import 'package:luxuryguide/profile_screen.dart';
import 'package:luxuryguide/widgets.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  static const homeScreen = 'HomeSceen';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreenContent(),
    SearchScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          buildBottomNavigationBarWidget(_onItemTapped, _selectedIndex),
      backgroundColor: Colors.blueGrey.shade100,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
