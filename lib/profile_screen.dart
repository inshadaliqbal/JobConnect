import 'package:flutter/material.dart';
import 'package:luxuryguide/constants.dart';
import 'extracted_widget.dart';

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: const Text(
            'Profile',
            style: kAppBarTextStyle
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0), // Common padding applied
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/story/andrew.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Inshad 24',
                  style: kProfileMainTextStyle
                ),
              ),
              Center(
                child: Text(
                  '@inshadiqbal',
                  style: kSecondDegreeTextStyle
                ),
              ),
              Center(
                child: Text(
                  'Flutter Developer',
                  style: kNormalDegreeTextStyle
                ),
              ),
              Center(
                child: Text(
                  'India',
                  style: kSecondDegreeTextStyle
                ),
              ),
              SizedBox(height: 20),
              CustomListTile(
                title: 'About',
              ),
              SizedBox(height: 10),
              CustomListTile(
                title: 'Experience',
                value: '2 Years',
              ),
              SizedBox(height: 10),
              CustomListTile(
                title: 'Education',
                value: 'B Tech',
              ),
              SizedBox(height: 10),
              CustomListTileWithScrollableContent(
                title: 'Skills',
                items: ['Flutter', 'Python', 'SQL'],
              ),
              SizedBox(height: 10),
              CustomListTileWithScrollableContent(
                title: 'Languages',
                items: ['English', 'Hindi', 'Malayalam'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

