import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const profileScreen = 'ProfileScreen';
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Common padding applied
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/story/andrew.jpg'),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Inshad 24',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Center(
                child: Text(
                  '@inshadiqbal',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'India',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomListTile(
                title: 'About',
              ),
              SizedBox(height: 10),
              CustomListTile(
                title: 'Experience',
                value: '2 Years',
              ),
              SizedBox(height: 10),
              CustomListTile(
                title: 'Education',
                value: 'B Tech',
              ),
              SizedBox(height: 10),
              CustomListTileWithScrollableContent(
                title: 'Skills',
                items: ['Flutter', 'Python', 'SQL'],
              ),
              SizedBox(height: 10),
              CustomListTileWithScrollableContent(
                title: 'Languages',
                items: ['English', 'Hindi', 'Malayalam'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;
  final String? value;

  const CustomListTile({
    required this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: value != null
            ? Text(
          value!,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        )
            : null,
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Add edit functionality here
          },
        ),
      ),
    );
  }
}

class CustomListTileWithScrollableContent extends StatelessWidget {
  final String title;
  final List<String> items;

  const CustomListTileWithScrollableContent({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: SizedBox(
          height: 100, // Set maximum height for the column
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Scroll horizontally
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: items
                  .map(
                    (item) => Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    '$item, ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ),
              )
                  .toList(),
            ),
          ),
        ),
        trailing: IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {
            // Add edit functionality here
          },
        ),
      ),
    );
  }
}
