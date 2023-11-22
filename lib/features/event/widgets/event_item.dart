import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tvg_sports/constants/styles.dart';
import 'package:tvg_sports/features/event/event_details_screen.dart';
import 'package:tvg_sports/features/event/widgets/circular_widget.dart';
import 'package:tvg_sports/network/models/event.dart';
import 'package:tvg_sports/utils/string_utils.dart';

class EventItem extends StatelessWidget {
  final Event event;
  const EventItem({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EventDetailsScreen.route);
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/icons/ic_sports.svg'),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${event.dateStarting.capitalizeFirstLetter()} | ${event.timeStarting}',
                    style: inter(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 10),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    event.teams,
                    style: inter(fontWeight: FontWeight.w400, color: Colors.black, fontSize: 18),
                  )
                ],
              ),
              const Spacer(),
              const CircularWidget(title: 'Leage', division: 'B')
            ],
          ),
        ),
      ),
    );
  }
}
