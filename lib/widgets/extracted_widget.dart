

import 'package:flutter/material.dart';
import 'package:luxuryguide/helpers/additional_files.dart';
import 'package:luxuryguide/style/constants.dart';


class MainButton extends StatelessWidget {

  String? title;
  Function? buttonFunction;
  MainButton({
    super.key,@required this.title,@required this.buttonFunction
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.pink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        onPressed: () {
          buttonFunction!();
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          // backgroundColor: Colors.white, // For the text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(
          title!,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 2,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}

class buildSocialButton extends StatelessWidget {
  const buildSocialButton({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey[200],
      ),
      child: Image.asset(imagePath),
    );
  }
}


class MainTextField extends StatelessWidget {
  String? hintText;
  Function? textfieldFunction;
  MainTextField({
    super.key,@required this.hintText,@required  this.textfieldFunction
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        textfieldFunction!(value);
      },
      obscureText: true,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
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
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: value != null
            ? Text(
          value!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
        )
            : null,
        trailing: IconButton(
          icon: const Icon(Icons.edit),
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
          style: const TextStyle(
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
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    '$item, ',
                    style: const TextStyle(
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
          icon: const Icon(Icons.edit),
          onPressed: () {
            // Add edit functionality here
          },
        ),
      ),
    );
  }
}



class JobFieldItem extends StatelessWidget {
  final JobField jobField;
  final VoidCallback onTap;

  const JobFieldItem({
    Key? key,
    required this.jobField,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              jobField.iconName,
              size: 40,
              color: Colors.black,
            ),
            const SizedBox(height: 10.0),
            Text(
              jobField.name!,
              textAlign: TextAlign.center,
              style: kNormalDegreeTextStyle,
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
        tileColor: Colors.white54,
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
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        onTap: () {
          // Add action when the ListTile is tapped
        },
      ),
    );
  }
}



