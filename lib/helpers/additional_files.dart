import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdditionalFiles {
  List? storyList = [
    StoryFile(name: 'Helen', imagePath: 'assets/story/helen.jpg'),
    StoryFile(name: 'Xenia', imagePath: 'assets/story/xenia.jpg'),
    StoryFile(name: 'Maria', imagePath: 'assets/story/maria.jpg'),
    StoryFile(name: 'Andrew', imagePath: 'assets/story/andrew.jpg'),
    StoryFile(name: 'Kevin', imagePath: 'assets/story/kevin.jpg'),
    StoryFile(name: 'Joshua', imagePath: 'assets/story/joshua.jpg'),
    StoryFile(name: 'Mathew', imagePath: 'assets/story/mathew.jpg')
  ];

  List? postList = [
    PostFile(
        name: 'Helen',
        imagePath: 'assets/story/helen.jpg',
        postPath: 'assets/post/helen.png'),
    PostFile(
        name: 'Xenia',
        imagePath: 'assets/story/xenia.jpg',
        postPath: 'assets/post/xenia.jpg'),
    PostFile(
        name: 'Maria',
        imagePath: 'assets/story/maria.jpg',
        postPath: 'assets/post/maria.jpg'),
    PostFile(
        name: 'Andrew',
        imagePath: 'assets/story/andrew.jpg',
        postPath: 'assets/post/andrew.png'),
    PostFile(
        name: 'Kevin',
        imagePath: 'assets/story/kevin.jpg',
        postPath: 'assets/post/kevin.jpeg'),
    PostFile(
        name: 'Joshua',
        imagePath: 'assets/story/joshua.jpg',
        postPath: 'assets/post/joshua.jpg'),
    PostFile(
        name: 'Mathew',
        imagePath: 'assets/story/mathew.jpg',
        postPath: 'assets/post/mathew.jpg'),
  ];

  List? jobFieldList = [
    JobField(
      name: 'Engineering',
      iconName: Icons.electrical_services_outlined,
    ),
    JobField(
      name: 'Design',
      iconName: Icons.design_services,
    ),
    JobField(
      name: 'Legal',
      iconName: Icons.man,
    ),
    JobField(
      name: 'Marketing',
      iconName: Icons.send_rounded,
    ),
    JobField(
      name: 'Health',
      iconName: Icons.local_hospital,
    ),
    JobField(
      name: 'Finance',
      iconName: Icons.monetization_on,
    ),
  ];

  List jobCardList = [
    JobCardClass(name: 'Product Designer',location: 'United States',jobType: 'Intern',imagePath: 'assets/logo/apple.png'),
    JobCardClass(name: 'Flutter Developer',location: 'United States',jobType: 'Permanent',imagePath: 'assets/logo/google.png'),
    JobCardClass(name: 'Web Designer',location: 'India',jobType: 'Intern',imagePath: 'assets/logo/facebook.png')
  ];

  List drawerFileList = [
    DrawerFiles(name: 'Saved Jobs',iconName: Icons.bookmark),

    DrawerFiles(name: 'Notification',iconName: Icons.notifications),

    DrawerFiles(name: 'Account Settings',iconName: Icons.settings),

    DrawerFiles(name: 'Help',iconName: Icons.help),

    DrawerFiles(name: 'Privacy',iconName: Icons.lock),

    DrawerFiles(name: 'Settings',iconName: Icons.manage_accounts_sharp),
  ];

}

class StoryFile {
  String? name;
  String? imagePath;
  StoryFile({this.name, this.imagePath});
}

class PostFile {
  String? name;
  String? imagePath;
  String? postPath;
  PostFile({this.name, this.imagePath, this.postPath});
}

class JobField {
  String? name;
  IconData? iconName;

  JobField({this.name, this.iconName});
}

class JobCardClass{
  String? name;
  String? imagePath;
  String? jobType;
  String? location;

  JobCardClass({this.name,this.imagePath,this.jobType,this.location});
}

class DrawerFiles{
  String? name;
  IconData? iconName;

  DrawerFiles({this.name,this.iconName});
}