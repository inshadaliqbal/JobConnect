import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'additional_files.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  AdditionalFiles additionalFiles = AdditionalFiles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 16.0, // Adjust elevation for a more prominent drawer
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header with gradient and padding
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.teal.shade700, Colors.teal.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Text(
                  'My Settings',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              // Divider with custom color
              Divider(color: Colors.grey.shade300),
              // List items with slight padding and icons (optional)
              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.bookmark, color: Colors.teal.shade700),
                  title: Text('Saved Jobs'),
                ),
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.notifications, color: Colors.teal.shade700),
                  title: Text('Notification'),
                ),
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.teal.shade700),
                  title: Text('Account Settings'),
                ),
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.help, color: Colors.teal.shade700),
                  title: Text('Help'),
                ),
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.lock, color: Colors.teal.shade700),
                  title: Text('Privacy'),
                ),
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.settings, color: Colors.teal.shade700),
                  title: Text('Settings'),
                ),
              ),
              // Log out with different styling
              Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.red.shade700, // Use a contrasting color
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Feed',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: Colors.white,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 35),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade200,
                    child: Icon(Icons.add, color: Colors.black54),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100, // Adjusted height for a more compact look
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: additionalFiles.storyList!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: CircleAvatar(
                                  radius: 28,
                                  backgroundImage: AssetImage(
                                    additionalFiles.storyList![index].imagePath,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                additionalFiles.storyList![index].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ListView.builder(
                itemCount: additionalFiles.postList!.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.black,
                              child: CircleAvatar(
                                radius: 18,
                                backgroundImage: AssetImage(
                                  additionalFiles.postList![index].imagePath,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              additionalFiles.postList![index].name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Post Text',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        SizedBox(height: 10),
                        Container(
                          constraints: BoxConstraints(
                            minWidth: 200,
                            minHeight: 200,
                            maxHeight: 400, // Adjusted for better image scaling
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              additionalFiles.postList![index].postPath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
