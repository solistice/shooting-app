class Spot {
  double leftOffset;
  double topOffset;
  SpotType type;
  int goal;
  int outcome = 0;
  bool isEnabled = false;

  Spot(this.type, this.goal, this.leftOffset, this.topOffset);
}

enum SpotType { numberOfMakes, numberOfShots }
