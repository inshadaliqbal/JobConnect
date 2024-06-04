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
      appBar: AppBar(),
      backgroundColor: Colors.blueGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/story/andrew.jpg'),
          ),
          Text('Inshad 24'),

          Text('@inshadiqbal'),

          Text('Flutter Defveloper'),

          Text('India'),
          Card(
            child: ListTile(
              title: Center(
                child: Text('About'),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Experience'),
              trailing: Text('2 Years'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Education'),
              trailing: Text('B tech'),
            ),
          ),
          Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text('Skills'),
                  trailing: Column(children: [
                    Text('Flutter'),
                    Text('Python'),
                    Text('SQL'),
                  ],),
                ),
              )
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text('Languages'),
                trailing: Column(children: [
                  Text('English'),
                  Text('Hindi'),
                  Text('Malayalam'),
                ],),
              ),
            )
          ),
        ],
      ),
    );
  }
}
