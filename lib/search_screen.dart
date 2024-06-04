import 'package:flutter/material.dart';
import 'package:luxuryguide/additional_files.dart';
import 'package:luxuryguide/login_screen.dart';

class SearchScreen extends StatefulWidget {
  static const searchScreen = 'SearchScreen';
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  AdditionalFiles additionalFiles = AdditionalFiles();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Search Bar'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Text(
              'Select the field you want to explore',
              style: TextStyle(fontSize: 30,color: Colors.black),
            ),
            Container(
              height: 500,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  // crossAxisSpacing: 0.0, // Horizontal space between grid items
                  mainAxisSpacing: 10.0, // Vertical space between grid items
                  // childAspectRatio: 3 / 2, // Width to height ratio of grid items
                ),
                itemCount: additionalFiles.jobFieldList!.length,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    radius: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          additionalFiles.jobFieldList![index].iconName,
                          size: 40,
                          color: Colors.black,
                        ),
                        Text(
                          additionalFiles.jobFieldList![index].name,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            TextButton(
              onPressed: () {

                Navigator.pushNamed(context, LoginScreen.loginScreen);
              },
              style: ButtonStyle(
                side: MaterialStatePropertyAll(
                  BorderSide(color: Colors.black, width: 2),
                ),
                overlayColor: MaterialStatePropertyAll(Colors.black),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                fixedSize: MaterialStatePropertyAll(
                  Size(140, 50),
                ),
                elevation: MaterialStatePropertyAll(5),
                backgroundColor: MaterialStatePropertyAll(Colors.white24),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
