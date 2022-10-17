import 'package:flutter/material.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({ Key? key }) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
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
          child: Column(
            children: [
              // again using Container for the very same reason.
              Container(
                color: Color(0xff262628),
                child: Card(
                  child: Container(
                    child: Column(

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }
}