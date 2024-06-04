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
        title: Center(
          child: Text(
            'Feed',
            style:
                TextStyle(fontSize: 15, color: Colors.black, letterSpacing: 2),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.blueGrey.withOpacity(0.5),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: additionalFiles.storyList!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                                additionalFiles.storyList![index].imagePath),
                          ),
                          Text(
                            additionalFiles.storyList![index].name,
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                letterSpacing: 2),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: ListView.builder(
                    itemCount: additionalFiles.postList!.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundImage: AssetImage(
                                      additionalFiles
                                          .postList![index].imagePath
                                  ),
                                ),
                                Text(additionalFiles.postList![index].name)
                              ],
                            ),
                            Text('Post Text'),
                            Container(
                              constraints: BoxConstraints(minWidth: 200,minHeight: 300),
                              child: Image(
                                image: AssetImage(additionalFiles
                                    .postList![index].postPath),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
