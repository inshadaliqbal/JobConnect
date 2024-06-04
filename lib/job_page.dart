import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:luxuryguide/additional_files.dart';
import 'package:luxuryguide/extracted_widget.dart';

import 'package:flutter/material.dart';

class JobPage extends StatefulWidget {
  static const jobPage = 'JobPage';

  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  String _selectedItem = 'Select Location';
  AdditionalFiles additionalFiles = AdditionalFiles();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Job Search',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Common padding applied
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
                    value: _selectedItem,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    ),
                    icon: const Icon(Icons.arrow_downward, color: Colors.black),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedItem = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Select Location',
                        child: Text('Select Location'),
                      ),
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
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10), // Add spacing between title and list
            Expanded(
              child: ListView.builder(
                itemCount: additionalFiles.jobCardList.length, // Example number of job items
                itemBuilder: (context, index) {
                  return JobCard(
                      jobTitle: additionalFiles.jobCardList[index].name,
                      location: additionalFiles.jobCardList[index].location,
                      imagePath: additionalFiles.jobCardList[index].imagePath,
                      jobType: additionalFiles.jobCardList[index].jobType);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final String jobTitle;
  final String location;
  final String imagePath;
  final String jobType;

  const JobCard({
    required this.jobTitle,
    required this.location,
    required this.imagePath,
    required this.jobType,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
        title: Text(
          jobTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.black,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: Colors.black54,
              ),
            ),
            Text(
              jobType,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        trailing: const Icon(Icons.book, size: 24, color: Colors.black),
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        onTap: () {
          // Add action when the ListTile is tapped
        },
      ),
    );
  }
}
