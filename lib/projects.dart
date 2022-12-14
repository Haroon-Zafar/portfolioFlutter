import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  // Making myProjects function for Code-Reusability.
  myProjects(language, title, description, stars) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        color: Color(0xff262628),
        child: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 10,
            top: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                language,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    stars,
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  //Expanded is used to place the github icon at the top most right.
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white70,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: const Text('My Projects'),
      ),
      body: SingleChildScrollView(
        // why use Container() because we have to use margin and padding

        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // again using Container for the very same reason.
              myProjects(
                  'FLUTTER', 'ToDo APP', 'SAVES TODO OF SEPARATE USERS', '2'),
              myProjects(
                  'FLUTTER', 'ToDo APP', 'SAVES TODO OF SEPARATE USERS', '2'),
              myProjects(
                  'FLUTTER', 'ToDo APP', 'SAVES TODO OF SEPARATE USERS', '2'),
              myProjects(
                  'FLUTTER', 'ToDo APP', 'SAVES TODO OF SEPARATE USERS', '2'),
              myProjects(
                  'FLUTTER', 'ToDo APP', 'SAVES TODO OF SEPARATE USERS', '2'),
              myProjects(
                  'FLUTTER', 'ToDo APP', 'SAVES TODO OF SEPARATE USERS', '2'),
              myProjects(
                  'FLUTTER', 'ToDo APP', 'SAVES TODO OF SEPARATE USERS', '2'),
            ],
          ),
        ),
      ),
    );
  }
}
