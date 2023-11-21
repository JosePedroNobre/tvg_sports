import 'package:flutter/material.dart';
import 'package:tvg_sports/network/models/event.dart';

class EventItem extends StatelessWidget {
  final Event event;
  const EventItem({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Text(event.sportType);
  }
}
