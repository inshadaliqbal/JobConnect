import 'package:flutter/material.dart';

BottomNavigationBar buildBottomNavigationBarWidget(
    Function onTap, int selectedInt) {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
          size: 28,
          color: Colors.black87,
        ),
        activeIcon: Icon(
          Icons.home,
          size: 28,
          color: Colors.black,
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search_outlined,
          size: 28,
          color: Colors.black87,
        ),
        activeIcon: Icon(
          Icons.search,
          size: 28,
          color: Colors.black,
        ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.message_outlined,
          size: 28,
          color: Colors.black87,
        ),
        activeIcon: Icon(
          Icons.message,
          size: 28,
          color: Colors.black,
        ),
        label: 'Messages',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.person_outline,
          size: 28,
          color: Colors.black87,
        ),
        activeIcon: Icon(
          Icons.person,
          size: 28,
          color: Colors.black,
        ),
        label: 'Profile',
      ),
    ],
    currentIndex: selectedInt,
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black54,
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    onTap: (index) {
      onTap(index);
    },
    elevation: 0, // No elevation for a flat design
    selectedLabelStyle: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    selectedIconTheme: IconThemeData(
      size: 28,
      color: Colors.black,
    ),
    unselectedIconTheme: IconThemeData(
      size: 28,
      color: Colors.black87,
    ),
    showSelectedLabels: true, // Show labels for selected items
    showUnselectedLabels: false, // Show labels for unselected items
    iconSize: 28, // Set a fixed icon size
  );
}
