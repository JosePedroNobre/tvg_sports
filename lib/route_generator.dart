import 'package:flutter/material.dart';
import 'package:tvg_sports/features/event/event_details_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routeName = settings.name;
    final args = settings.arguments;
    dynamic screen;

    switch (routeName) {
      case EventDetailsScreen.route:
        if (args is EventDetailsArgs) {
          screen = EventDetailsScreen(event: args.event!);
        }
        break;
      default:
        break;
    }

    if (screen == null) {
      return _errorRoute('Parameter type failed for $routeName');
    }

    return _buildRoute(routeName, screen);
  }

  static Route<dynamic> _buildRoute(String? routeName, dynamic screen) =>
      MaterialPageRoute(settings: RouteSettings(name: routeName), builder: (_) => screen);

  static Route<dynamic> _errorRoute(String error) {
    return MaterialPageRoute<dynamic>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('route_generator.dart error'),
          ),
          body: Center(
            child: Text(error),
          ),
        );
      },
    );
  }
}
