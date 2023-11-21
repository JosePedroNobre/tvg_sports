import 'package:flutter/material.dart';
import 'package:tvg_sports/constants/custom_colors.dart';

class DateTabBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const DateTabBar({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Container(
        color: CustomColors.mediumGrey,
        child: TabBar(
          onTap: onTabChange,
          indicatorColor: CustomColors.primaryColor,
          unselectedLabelColor: CustomColors.lightGrey,
          labelColor: CustomColors.primaryColor,
          tabs: const [
            Tab(text: 'Yesterday'),
            Tab(text: 'Today'),
            Tab(text: 'Tomorrow'),
          ],
        ),
      ),
    );
  }
}
