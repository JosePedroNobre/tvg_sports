import 'package:tvg_sports/features/event/data/event_data_source.dart';

class EventRepository {
  EventDataSource dataSource;

  EventRepository(this.dataSource);

  getEvents() => dataSource.getEvents();
}
