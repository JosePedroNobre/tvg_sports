import 'package:tvg_sports/features/event/data/event_data_source.dart';
import 'package:tvg_sports/network/models/event.dart';

class EventRepository {
  EventDataSource dataSource;

  EventRepository(this.dataSource);

  Future<List<Event>> getEvents() => dataSource.getEvents();
}
