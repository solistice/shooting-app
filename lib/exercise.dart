import 'spot.dart';

class Exercise {
  DateTime date;
  String coach;
  String team;
  List<Spot> spots;

  Exercise(this.date, this.coach, this.team, this.spots);

  Map<String, dynamic> toJson() {
    return {
      'date': this.date,
      'coach': this.coach,
      'team': this.team,
      'spots': this.spots
    };
  }
}
