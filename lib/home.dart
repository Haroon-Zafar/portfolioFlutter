import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // Making a function to avoid redundant code
  myAchiev(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: Text(type),
        ),
      ],
    );
  }

  mySpecifications(icon, tech) {
    return Container(
      height: 115,
      width: 105,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.android,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                tech,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 40,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        // why using Container ? because we get properties padding and styling easily.
        body: Container(
          // why using Stack() instead of Column() ? because we can put widgets on top of each other.
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 80,
                ),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/img.png',
                    // height: 400,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text(
                      "Haroon Zafar",
                      style: TextStyle(
                        fontFamily: "Soho",
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Web Developer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 40),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myAchiev('78', 'Project'),
                    myAchiev('2', 'Clients'),
                    myAchiev('10', 'Orders'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Specialized In",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // Making three different Containers.
                      children: [
                        mySpecifications(Icons.android, 'Android'),
                        mySpecifications(Icons.android, 'Android'),
                        mySpecifications(Icons.android, 'Android'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // Making three different Containers.
                      children: [
                        mySpecifications(Icons.android, 'Android'),
                        mySpecifications(Icons.android, 'Android'),
                        mySpecifications(Icons.android, 'Android'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // Making three different Containers.
                      children: [
                        mySpecifications(Icons.android, 'Android'),
                        mySpecifications(Icons.android, 'Android'),
                        mySpecifications(Icons.android, 'Android'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

//                         Container(
//   height: 115,
//   width: 105,
//   child: Card(
//     margin: EdgeInsets.all(0),
//     color: Color(0xff252525),
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(15),
//     ),
//     child: Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             Icons.android,
//             color: Colors.white,
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             "Android",
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// ),
