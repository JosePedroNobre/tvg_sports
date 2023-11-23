import 'package:flutter/material.dart';
import 'package:tvg_sports/constants/custom_colors.dart';
import 'package:tvg_sports/constants/styles.dart';
import 'package:tvg_sports/features/event/widgets/app_bar_widget.dart';
import 'package:tvg_sports/features/event/widgets/circular_widget.dart';
import 'package:tvg_sports/network/models/event.dart';
import 'package:tvg_sports/utils/string_utils.dart';

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
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SizedBox(
            width: double.infinity,
            child: Column(children: [
              const SizedBox(height: 60),
              Hero(
                tag: 'circular_widget_${event.id}',
                child: CircularWidget(title: event.league.firstElement, division: event.league.secondElement),
              ),
              const SizedBox(height: 15),
              Text(
                '${event.dateStarting.capitalizeFirstLetter()} | ${event.timeStarting}',
                style: inter(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.black),
              ),
              const SizedBox(height: 5),
              Text(
                event.teams,
                style: inter(fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: CustomColors.dividerGrey,
              ),
              const SizedBox(height: 30),
              Image.network(event.iconUrl, height: 46, width: 46),
              const SizedBox(height: 30),
              Text(
                'Gummi bears cupcake sesame snaps cupcake bonbon. Halvah muffin biscuit brownie bear claw cookie croissant. Sugar plum candy canes brownie topping pudding jelly-o chocolate cake lollipop.\n\nChocolate cake chupa chups shortbread apple pie chocolate bar jelly beans chocolate carrot cake danish. Lemon drops jujubes chocolate sesame snaps marshmallow. Sesame snaps sweet roll oat cake.',
                style: inter(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.black),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
