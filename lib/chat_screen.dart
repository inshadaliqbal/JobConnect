import 'package:flutter/material.dart';
import 'package:luxuryguide/additional_files.dart';


class ChatScreen extends StatefulWidget {

  static const chatScreen = 'ChatScreen';
  ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  AdditionalFiles additionalFiles = AdditionalFiles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('Messages',style: TextStyle(color: Colors.black),),
              Icon(Icons.note_alt)
            ],
          ),
          TextField(
            onChanged: (value) {},
            obscureText: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Search',
              contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New Group'),
              Text('Archive')
            ],
          ),
          Container(
            height: 100,
            width: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: additionalFiles.storyList!.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(additionalFiles.storyList![index].imagePath),
                      ),
                      SizedBox(height: 5),
                      Text(
                        additionalFiles.storyList![index].name,
                        style: TextStyle(fontSize: 15, color: Colors.black, letterSpacing: 1.5),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 400,
            width: 300,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: additionalFiles.storyList!.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(additionalFiles.storyList![index].imagePath),
                      ),
                      SizedBox(width: 5),
                      Text(
                        additionalFiles.storyList![index].name,
                        style: TextStyle(fontSize: 15, color: Colors.black, letterSpacing: 1.5),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
