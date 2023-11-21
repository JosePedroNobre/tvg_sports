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
      var filteredEvents = allEvents.where((event) {
        String eventDate = event.dateStarting;
        return eventDate == dateFilter.name;
      }).toList();

      emit(EventScreenLoaded(filteredEvents));
    } catch (e) {
      emit(EventScreenError(message: e.toString()));
    }
  }
}
