import 'package:flutter/material.dart';
import 'package:tvg_sports/constants/custom_colors.dart';
import 'package:tvg_sports/constants/styles.dart';

class DateTabBarWidget extends StatelessWidget {
  final Function(int)? onTabChange;
  const DateTabBarWidget({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Container(
        color: CustomColors.mediumGrey,
        child: TabBar(
          labelStyle: inter(fontSize: 10),
          onTap: onTabChange,
          indicatorColor: CustomColors.primaryColor,
          unselectedLabelColor: CustomColors.lightGrey,
          labelColor: CustomColors.primaryColor,
          tabs: [
            Tab(
              text: 'Yesterday'.toUpperCase(),
            ),
            Tab(text: 'Today'.toUpperCase()),
            Tab(text: 'Tomorrow'.toUpperCase()),
          ],
        ),
      ),
    );
  }
}
