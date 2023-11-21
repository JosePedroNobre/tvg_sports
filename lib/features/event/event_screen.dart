import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tvg_sports/features/event/cubit/event_screen_cubit.dart';
import 'package:tvg_sports/features/event/widgets/event_list.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _buildList(context)));
  }

  _buildList(BuildContext context) {
    return BlocBuilder<EventScreenCubit, EventScreenState>(
        bloc: context.read<EventScreenCubit>()..getEvents(),
        builder: (context, state) {
          if (state is EventScreenLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is EventScreenLoaded) {
            return EventList(events: state.events);
          }

          return const Text('Error loading data');
        });
  }
}
