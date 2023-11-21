import 'package:flutter/material.dart';
import 'package:tvg_sports/features/event/widgets/event_item.dart';
import 'package:tvg_sports/network/models/event.dart';

class EventList extends StatelessWidget {
  final List<Event> events;
  const EventList({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return EventItem(event: events[index]);
        });
  }
}
