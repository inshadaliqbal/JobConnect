import 'package:flutter/material.dart';
import 'package:luxuryguide/additional_files.dart';
import 'package:luxuryguide/extracted_widget.dart';
import 'package:luxuryguide/job_page.dart';
import 'package:luxuryguide/login_screen.dart';

class SearchScreen extends StatefulWidget {
  static const searchScreen = 'SearchScreen';
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    AdditionalFiles additionalFiles = AdditionalFiles();
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Explore')),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(
          top: 20.0, // Adjust padding based on screen size
          left: (screenWidth < 600) ? 10.0 : 20.0, // Adjust padding for responsiveness
          right: (screenWidth < 600) ? 10.0 : 20.0, // Adjust padding for responsiveness
          bottom: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Select the field you want to explore',
              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
            ),
            Container(
              constraints: BoxConstraints(
                  maxHeight: 400
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (screenWidth < 600) ? 16/9 : 12/10,
                ),
                itemCount: additionalFiles.jobFieldList!.length,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    radius: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          additionalFiles.jobFieldList![index].iconName,
                          size: 30,
                          color: Colors.black,
                        ),
                        Text(
                          additionalFiles.jobFieldList![index].name,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            MainButton(title: 'Explore', buttonFunction: () {
              Navigator.pushNamed(context, JobPage.jobPage);  // Assuming JobPage exists
            }),
          ],
        ),
      ),
    );
  }
}
