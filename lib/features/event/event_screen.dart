import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tvg_sports/constants/tvg_colors.dart';
import 'package:tvg_sports/features/event/cubit/event_screen_cubit.dart';
import 'package:tvg_sports/features/event/widgets/date_tab.dart';
import 'package:tvg_sports/features/event/widgets/event_list.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: SvgPicture.asset('assets/icons/ic_tvg_logo.svg'),
                backgroundColor: CustomColors.toolbarColor),
            body: Column(
              children: [const SizedBox(height: 40, child: DateTabBar()), _buildList(context)],
            )));
  }

  _buildList(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: BlocBuilder<EventScreenCubit, EventScreenState>(
          bloc: context.read<EventScreenCubit>()..getEvents(),
          builder: (context, state) {
            if (state is EventScreenLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is EventScreenLoaded) {
              return EventList(events: state.events);
            }

            return const Text('Error loading data');
          }),
    );
  }
}
