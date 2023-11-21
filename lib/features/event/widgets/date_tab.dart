import 'package:flutter/material.dart';
import 'package:tvg_sports/constants/tvg_colors.dart';

class DateTabBar extends StatelessWidget {
  const DateTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar Example'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Yesterday'),
              Tab(text: 'Today'),
              Tab(text: 'Tomorrow'),
            ],
          ),
        ),
        body: DateTabBarView(),
      ),
    );
  }
}

class DateTabBarView extends StatelessWidget {
  final Color selectedColor = CustomColors.primaryColor;
  final Color unselectedColor = CustomColors.lightGrey;

  const DateTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
          child: Text(
            'Yesterday Content',
            style: TextStyle(
              color: selectedColor,
              fontSize: 20.0,
            ),
          ),
        ),
        Center(
          child: Text(
            'Today Content',
            style: TextStyle(
              color: selectedColor,
              fontSize: 20.0,
            ),
          ),
        ),
        Center(
          child: Text(
            'Tomorrow Content',
            style: TextStyle(
              color: selectedColor,
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
