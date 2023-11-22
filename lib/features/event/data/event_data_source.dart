import 'package:tvg_sports/network/generic/api_service.dart';
import 'package:tvg_sports/network/models/event.dart';

abstract class EventDataSource {
  Future<List<Event>> getEvents();
}

class EventRemoteDataSource extends EventDataSource {
  final ApiService apiService = ApiService.shared;

  @override
  Future<List<Event>> getEvents() async {
    try {
      // make api call and get an event response
      // We should replace the return statement with the actual logic to fetch events from the API.
      // For example:
      // final response = await apiService.fetchEvents();
      // return response.map((eventData) => Event.fromJson(eventData)).toList();

      return Future.delayed(const Duration(seconds: 0), () {
        return [];
      });
    } catch (e) {
      throw e as Exception;
    }
  }
}

class EventLocalDataSource extends EventDataSource {
  @override
  Future<List<Event>> getEvents() {
    List<Map<String, dynamic>> responses = [
      {
        'id': 1,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Porto vs. Braga',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 2,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 3,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 4,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 5,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 6,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 7,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 8,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 9,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 10,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Roma vs Inter',
        'sportType': 'Football',
        'dateStarting': 'today',
        'timeStarting': '14:00',
      },
      {
        'id': 11,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Liga A',
        'teams': 'Portuguese Leage',
        'sportType': 'Football',
        'dateStarting': 'yesterday',
        'timeStarting': '14:00',
      },
      {
        'id': 12,
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'League A',
        'teams': 'Granada vs Málaga',
        'sportType': 'Football',
        'dateStarting': 'tomorrow',
        'timeStarting': '14:00',
      },
    ];

    return Future.delayed(const Duration(seconds: 0), () {
      return responses.map((response) => Event.fromJson(response)).toList();
    });
  }
}
