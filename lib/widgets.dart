import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxuryguide/extracted_widget.dart';
import 'package:luxuryguide/home_screen.dart';
import 'constants.dart';

import 'package:luxuryguide/additional_files.dart';


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

Drawer buildDrawer(BuildContext context) {
  AdditionalFiles additionalFiles = AdditionalFiles();
  return Drawer(
    backgroundColor: Colors.white,
    elevation: 16.0, // Adjust elevation for a more prominent drawer
    child: SafeArea(
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text('My Settings', style: kDrawerHeadingTextStyle),
            ),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: additionalFiles.drawerFileList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: ListTile(
                      leading: Icon(additionalFiles.drawerFileList[index].iconName,
                          color: Colors.black), // Black icons
                      title:
                      Text(additionalFiles.drawerFileList[index].name, style: kDrawerContentTextStyle),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Divider(color: Colors.white),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                      },
                      child: Text(
                          'Log Out',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,

                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildWelcomeSection(BuildContext context) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Again!',
          style: kFirstDegreeTextStyle,
        ),
        Text(
          'Welcome back, your people are missing you!',
          style: kSecondDegreeTextStyle,
        ),
      ],
    ),
  );
}

Widget buildLoginSection(BuildContext context) {
  return Expanded(
    child: Column(
      children: [
        MainTextField(
          hintText: 'Email',
          textfieldFunction: () {},
        ),
        const SizedBox(height: 20),
        MainTextField(
          hintText: 'Password',
          textfieldFunction: () {},
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot your password?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildSocialLoginSection(BuildContext context) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MainButton(
            title: 'Sign In',
            buttonFunction: () {
              Navigator.pushNamed(context, HomeScreen.homeScreen);
            }),
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: Text(
            'Or Continue With',
            style: kSecondDegreeTextStyle,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialButton(imagePath: 'assets/logo/google.png'),
            buildSocialButton(imagePath: 'assets/logo/apple.png'),
            buildSocialButton(imagePath: 'assets/logo/facebook.png'),
          ],
        ),
      ],
    ),
  );
}

