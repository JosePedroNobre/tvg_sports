import 'package:tvg_sports/network/generic/api_service.dart';
import 'package:tvg_sports/network/models/event.dart';

abstract class EventDataSource {
  getEvents();
}

class EventRemoteDataSource extends EventDataSource {
  final ApiService apiService = ApiService.shared;

  @override
  Future<void> getEvents() async {
    try {
      // make api call and get an event response
      // We should replace the return statement with the actual logic to fetch events from the API.
      // For example:
      // final response = await apiService.fetchEvents();
      // return response.map((eventData) => Event.fromJson(eventData)).toList();
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
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Milan vs. Munich',
        'sportType': 'Football',
        'dateStarting': 'Today',
        'timeStarting': '14:00',
      },
      {
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Milan vs. Munich',
        'sportType': 'Football',
        'dateStarting': 'Today',
        'timeStarting': '14:00',
      },
      {
        'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
        'league': 'Serie A',
        'teams': 'Milan vs. Munich',
        'sportType': 'Football',
        'dateStarting': 'Today',
        'timeStarting': '14:00',
      },
    ];

    return Future.delayed(const Duration(seconds: 2), () {
      return responses.map((response) => Event.fromJson(response)).toList();
    });
  }
}
