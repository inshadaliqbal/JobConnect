import 'package:flutter/material.dart';
import 'additional_files.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  AdditionalFiles additionalFiles = AdditionalFiles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Feed',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
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
                                backgroundImage: AssetImage(
                                  additionalFiles.storyList![index].imagePath,
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
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
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
                              backgroundImage: AssetImage(
                                additionalFiles.postList![index].imagePath,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              additionalFiles.postList![index].name,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
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