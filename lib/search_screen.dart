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
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Explore',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: screenWidth < 600 ? 10.0 : 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select the field you want to explore',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: screenWidth < 600 ? 16 / 9 : 12 / 10,
                ),
                itemCount: additionalFiles.jobFieldList!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      // Handle tap if necessary
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            additionalFiles.jobFieldList![index].iconName,
                            size: 40,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            additionalFiles.jobFieldList![index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20.0),
            MainButton(
              title: 'Explore',
              buttonFunction: () {
                Navigator.pushNamed(context, JobPage.jobPage); // Assuming JobPage exists
              },
            ),
          ],
        ),
      ),
    );
  }
}