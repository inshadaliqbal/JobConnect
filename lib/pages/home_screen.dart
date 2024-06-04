import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxuryguide/helpers/additional_files.dart';
import 'package:luxuryguide/pages/chats_screen.dart';
import 'package:luxuryguide/pages/home_feed.dart';
import 'package:luxuryguide/pages/profile_screen.dart';
import 'package:luxuryguide/widgets/widgets.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String homeScreen = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screenOptions = [
    const HomeScreenContent(),
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
      bottomNavigationBar: buildBottomNavigationBarWidget(_onItemTapped, _selectedIndex),
      backgroundColor: Colors.blueGrey.shade100,
      body: _screenOptions[_selectedIndex],
    );
  }
}
