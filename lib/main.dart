import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tvg_sports/features/event/cubit/event_screen_cubit.dart';
import 'package:tvg_sports/features/event/data/event_data_source.dart';
import 'package:tvg_sports/features/event/data/event_repository.dart';
import 'package:tvg_sports/features/event/event_screen.dart';
import 'package:tvg_sports/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const appTitle = 'TVGSports';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<EventScreenCubit>(
          create: (context) => EventScreenCubit(EventRepository(EventLocalDataSource())),
        )
      ],
      child: MaterialApp(
        title: appTitle,
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const EventScreen(),
      ),
    );
  }
}
