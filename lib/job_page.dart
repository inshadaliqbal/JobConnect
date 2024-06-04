import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class JobPage extends StatefulWidget {
  static const jobPage = 'JobPage';

  const JobPage({Key? key}) : super(key: key);

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  String _selectedItem = 'Select Location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.blueGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton<String>(
                  value: _selectedItem,
                  icon: Icon(Icons.arrow_downward), // Dropdown icon
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedItem = newValue!;
                      // Here you can handle the action when "Select Location" is chosen
                      // For example, show a dialog with location options
                      // _showLocationDialog(context);
                    });
                  },
                  items: [
                    DropdownMenuItem<String>(
                      value: 'Select Location',
                      child: Text('Select Location'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    hintText: 'Password',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal, width: 1.0),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 2.0),
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 16),
                ),
              ),
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Job List',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 4,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1, // Example number of job items
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/logo/apple.png',
                      fit: BoxFit.fill,
                    ),
                    title: Text(
                      'Product Designer',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    subtitle: Text(
                      'United States',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                    trailing: Icon(Icons.book, size: 20),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    onTap: () {
                      // Add action when the ListTile is tapped
                    },
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
