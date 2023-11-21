part of 'event_screen_cubit.dart';

sealed class EventScreenState extends Equatable {
  const EventScreenState();

  @override
  List<Object> get props => [];
}

final class EventScreenInitial extends EventScreenState {}

class EventScreenLoading extends EventScreenState {}

class EventScreenLoaded extends EventScreenState {
  final List<Event> events;

  const EventScreenLoaded(this.events);
}

class EventScreenError extends EventScreenState {
  final String? message;
  const EventScreenError({this.message});
}

final class TabChanged extends EventScreenState {
  final DateFilter dateFilter;

  const TabChanged(this.dateFilter);
}
