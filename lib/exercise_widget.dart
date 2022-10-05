import 'dart:math';

import 'package:flutter/material.dart';
import 'exercise.dart';
import 'spot.dart';

class ExerciseWidget extends StatefulWidget {
  final Exercise exercise;

  ExerciseWidget(this.exercise);
  @override
  _ExerciseWidgetState createState() => _ExerciseWidgetState();
}

class _ExerciseWidgetState extends State<ExerciseWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Exercise")),
        body: Stack(children: <Widget>[
          Image.asset('images/court.png', fit: BoxFit.contain),
          ...(widget.exercise.spots.isEmpty
              ? generateDefaultSpots()
              : generateSpots())
        ]));
  }

  List<Widget> generateDefaultSpots() {
    List<double> leftHalfCirclePosition = [410.0, 145.0];
    List<double> leftMidHalfCirclePosition = [435.0, 225.0];
    List<double> midHalfCirclePosition = [500.0, 260.0];
    List<double> rightMidHalfCirclePosition = [565.0, 225.0];
    List<double> rightHalfCirclePosition = [590.0, 145.0];

    List<Spot> spotList = <Spot>[];
    var spacing = 80;
    for (var i = 0; i < 5; i++) {
      spotList.add(Spot(SpotType.numberOfMakes, 10,
          leftHalfCirclePosition[0] - spacing * i, leftHalfCirclePosition[1]));
      spotList.add(Spot(SpotType.numberOfMakes, 10, midHalfCirclePosition[0],
          midHalfCirclePosition[1] + spacing * i));
      spotList.add(Spot(
          SpotType.numberOfMakes,
          10,
          rightHalfCirclePosition[0] + spacing * i,
          rightHalfCirclePosition[1]));
      spotList.add(Spot(
          SpotType.numberOfMakes,
          10,
          leftMidHalfCirclePosition[0] - spacing * i,
          leftMidHalfCirclePosition[1] + spacing * i));
      spotList.add(Spot(
          SpotType.numberOfMakes,
          10,
          rightMidHalfCirclePosition[0] + spacing * i,
          rightMidHalfCirclePosition[1] + spacing * i));
    }

    this.widget.exercise.spots = spotList;
    return generateSpots();
  }

  List<Widget> generateSpots() {
    final double aRatio = min(min(1000.0, MediaQuery.of(context).size.width),
            MediaQuery.of(context).size.height) /
        1000;
    return widget.exercise.spots
        .map<Widget>((spot) => Positioned(
              left: spot.leftOffset * aRatio - 10.0,
              top: spot.topOffset * aRatio - 10.0,
              child: GestureDetector(
                onTap: () {
                  print("clicked");
                  setState(() => spot.isEnabled = !spot.isEnabled);
                }, // Image tapped
                child: Image.asset('images/basketball.png',
                    fit: BoxFit.cover, // Fixes border issues
                    width: 20.0,
                    height: 20.0,
                    color: Colors.grey),
              ),
            ))
        .toList();
  }
}
