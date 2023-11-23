import 'package:flutter/material.dart';
import 'package:tvg_sports/constants/custom_colors.dart';
import 'package:tvg_sports/constants/styles.dart';
import 'package:tvg_sports/features/event/event_details_screen.dart';
import 'package:tvg_sports/features/event/widgets/circular_widget.dart';
import 'package:tvg_sports/network/models/event.dart';
import 'package:tvg_sports/utils/string_utils.dart';

class EventItemWidget extends StatelessWidget {
  final Event event;
  const EventItemWidget({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: CustomColors.lightBlue,
      onTap: () {
        Navigator.pushNamed(context, EventDetailsScreen.route, arguments: EventDetailsArgs(event));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24,top: 10,bottom: 10),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(event.iconUrl, width: 46, height: 46),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${event.dateStarting.capitalizeFirstLetter()} | ${event.timeStarting}',
                    style: inter(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    event.teams,
                    style: inter(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 18),
                  )
                ],
              ),
              const Spacer(),
              Hero(
                tag: 'circular_widget_${event.id}',
                child: CircularWidget(title: event.league.firstElement, division: event.league.secondElement),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
