import 'package:flutter/widgets.dart';
import 'package:tvg_sports/network/models/event.dart';

class EventDetailsArgs {
  final Event? event;

  EventDetailsArgs(this.event);
}

class EventDetailsScreen extends StatelessWidget {
  final Event event;
  static const route = '/event_details_screen';
  const EventDetailsScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
