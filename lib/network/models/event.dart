class Event {
  String iconUrl;
  String league;
  String teams;
  String sportType;
  String dateStarting;
  String timeStarting;

  Event({
    required this.iconUrl,
    required this.league,
    required this.teams,
    required this.sportType,
    required this.dateStarting,
    required this.timeStarting,
  });

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        iconUrl: json['iconUrl'],
        league: json['league'],
        teams: json['teams'],
        sportType: json['sportType'],
        dateStarting: json['dateStarting'],
        timeStarting: json['timeStarting'],
      );

  Map<String, dynamic> toJson() => {
        'iconUrl': iconUrl,
        'league': league,
        'teams': teams,
        'sportType': sportType,
        'dateStarting': dateStarting,
        'timeStarting': timeStarting,
      };
}
