import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tvg_sports/features/event/data/event_repository.dart';
import 'package:tvg_sports/network/models/event.dart';

part 'event_screen_state.dart';

class EventScreenCubit extends Cubit<EventScreenState> {
  final EventRepository repository;

  EventScreenCubit(this.repository) : super(EventScreenInitial());

  void getEvents(DateFilter dateFilter) async {
    try {
      emit(EventScreenLoading());
      var allEvents = await repository.getEvents();

      DateTime now = DateTime.now();
      DateTime filterDate;

      switch (dateFilter) {
        case DateFilter.today:
          filterDate = DateTime(now.year, now.month, now.day);
          break;
        case DateFilter.yesterday:
          filterDate = now.subtract(const Duration(days: 1));
          break;
        case DateFilter.tomorrow:
          filterDate = now.add(const Duration(days: 1));
          break;
      }

      var filteredEvents = allEvents.where((event) {
        DateTime eventDate = DateTime.parse(event.dateStarting);
        return eventDate.year == filterDate.year &&
            eventDate.month == filterDate.month &&
            eventDate.day == filterDate.day;
      }).toList();

      emit(EventScreenLoaded(filteredEvents));
    } catch (e) {
      emit(EventScreenError(message: e.toString()));
    }
  }
}
