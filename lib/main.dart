// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'exercise.dart';
import 'exercise_widget.dart';
import 'spot.dart';

/*
void main() {
  //runApp(const MyApp());
  runApp(//Center(child: Image.asset('images/court.jpg', fit: BoxFit.fill)));
      MaterialApp(
    home: Stack(children: <Widget>[
      RotatedBox(
          quarterTurns: 1,
          child: Image.asset('images/court.png', fit: BoxFit.fill)),
      //       Container(
      // width: 250,
      // height: 250,
      // color: Colors.red,
      // ),
      Positioned(
        left: 100,
        top: 100,
        child:
      GestureDetector(
        onTap: () { print("tapped"); }, // Image tapped
        child: Image.asset(
          'images/basketball.png',
          fit: BoxFit.cover, // Fixes border issues
          width: 20.0,
          height: 20.0,
        ),
      ),
      )
      // Positioned(
      //     left: 100,
      //     top: 100,
      //     child: Material(
      //       child: CircleButton(
      //           key: UniqueKey(),
      //           onTap: () => {},
      //           iconData: Icons.circle_rounded
      //           // color: Colors.blue,
      //           // shape: const CircleBorder(),
      //           // onPressed: () {},
      //           // child: const Padding(
      //           //  padding: EdgeInsets.all(1),
      //           //  child: null,
      //           ),
      //     )),
    ]),

    // Container(
    //   padding: const EdgeInsets.all(5.0),
    //   alignment: Alignment.bottomCenter,
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //       begin: Alignment.topCenter,
    //       end: Alignment.bottomCenter,
    //       colors: <Color>[
    //         Colors.black.withAlpha(0),
    //         Colors.black12,
    //         Colors.black45
    //       ],
    //     ),
    //   ),
    //   child: const Text(
    //     'Foreground Text',
    //     style: TextStyle(color: Colors.white, fontSize: 20.0),
    //   ),
    // ),
  ));
}

// class TrainingSpot extends StatefulWidget {

//   @override
//   State<StatefulWidget> createState() => _TrainingSpotState();
// }

// class _TrainingSpotState extends State<TrainingSpot> {
//     int index;
//   bool isActive;
//   bool isDone;

//   _TrainingSpotState() {
//     index = 0;
//     isActive = false;
//     isDone = false;
//   }
// }
*/

List<double> leftHalfCirclePosition = [410.0, 145.0];
List<double> leftMidHalfCirclePosition = [435.0, 225.0];
List<double> midHalfCirclePosition = [500.0, 260.0];
List<double> rightMidHalfCirclePosition = [565.0, 225.0];
List<double> rightHalfCirclePosition = [590.0, 145.0];

List<Spot> spotList = [
  Spot(SpotType.numberOfMakes, 10, leftHalfCirclePosition[0],
      leftHalfCirclePosition[1]),
  Spot(SpotType.numberOfMakes, 10, leftMidHalfCirclePosition[0],
      leftMidHalfCirclePosition[1]),
  Spot(SpotType.numberOfMakes, 10, midHalfCirclePosition[0],
      midHalfCirclePosition[1]),
  Spot(SpotType.numberOfMakes, 10, rightMidHalfCirclePosition[0],
      rightMidHalfCirclePosition[1]),
  Spot(SpotType.numberOfMakes, 10, rightHalfCirclePosition[0],
      rightHalfCirclePosition[1]),
];
Exercise exercise = Exercise(DateTime.now(), "Coach Kaat", "MU14", <Spot>[]);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barts app',
      theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: ExerciseWidget(exercise),
    );
  }
}
/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hello World!")), body: TextInputWidget());
  }
}

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: this.controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message), labelText: "Type a message:"),
      ),
    ]);
  }
}
*/
