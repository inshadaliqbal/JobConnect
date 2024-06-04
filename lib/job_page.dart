import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luxuryguide/additional_files.dart';
import 'package:luxuryguide/constants.dart';
import 'package:luxuryguide/extracted_widget.dart';

class JobPage extends StatefulWidget {
  static const String jobPage = 'JobPage';

  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  final String _locationHint = 'Select Location'; // Pre-select location hint
  final AdditionalFiles additionalFiles = AdditionalFiles();

  @override
  Widget build(BuildContext context) {
    String _selectedLocation = _locationHint;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Job Search',
          style: kAppBarTextStyle,
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        // Use SingleChildScrollView for scrollable content
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButtonFormField<String>(
                    value: _selectedLocation,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 20), // Add label for clarity
                    ),
                    icon: const Icon(Icons.arrow_downward, color: Colors.black),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedLocation = newValue!;
                      });
                    },
                    items: [
                      DropdownMenuItem<String>(
                        value: _locationHint,
                        child: Text(_locationHint),
                      ),
                      // Add other location options here
                    ],
                  ),
                  const SizedBox(height: 20),
                  MainTextField(hintText: 'Search', textfieldFunction: () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: MainButton(title: 'Search', buttonFunction: () {}),
            ),
            const Text(
              'Job List',
              style: kThirdDegreeTextStyle,
            ),
            const SizedBox(height: 10), // Add spacing between title and list
            Expanded(
              child: ListView.builder(
                itemCount: additionalFiles
                    .jobCardList.length, // Example number of job items
                itemBuilder: (context, index) {
                  return JobCard(
                    jobTitle: additionalFiles.jobCardList[index].name,
                    location: additionalFiles.jobCardList[index].location,
                    imagePath: additionalFiles.jobCardList[index].imagePath,
                    jobType: additionalFiles.jobCardList[index].jobType,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

