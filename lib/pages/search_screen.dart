import 'package:flutter/material.dart';
import 'package:luxuryguide/style/constants.dart';
import 'package:luxuryguide/widgets/extracted_widget.dart';
import 'package:luxuryguide/pages/job_page.dart';
import '../helpers/additional_files.dart';

class SearchScreen extends StatefulWidget {
  static const String searchScreen = 'SearchScreen'; // Use String for route names

  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final AdditionalFiles additionalFiles = AdditionalFiles();

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Explore',
          style: kAppBarTextStyle,
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding( // Use SingleChildScrollView for scrollable content
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
              style: kSecondDegreeTextStyle,
            ),
            const SizedBox(height: 20.0),
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
                  return JobFieldItem(
                    jobField: additionalFiles.jobFieldList![index],
                    onTap: () {
                      // Handle tap if necessary
                      Navigator.pushNamed(context, JobPage.jobPage);
                    },
                  );
                },
              ),
            ),
            MainButton(
              title: 'Explore Jobs',
              buttonFunction: () => Navigator.pushNamed(context, JobPage.jobPage),
            ),
          ],
        ),
      ),
    );
  }
}
