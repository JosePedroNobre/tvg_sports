import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tvg_sports/features/event/cubit/event_screen_cubit.dart';
import 'package:tvg_sports/features/event/data/event_data_source.dart';
import 'package:tvg_sports/features/event/data/event_repository.dart';
import 'package:tvg_sports/network/models/event.dart';

class MockEventRepository extends Mock implements EventRepository {
  // Constructor delegates to the constructor of EventRepository
  MockEventRepository(EventDataSource dataSource) : super();
}

class MockEventLocalDataSource extends Mock implements EventLocalDataSource {}

void main() {
  group('EventScreenCubit', () {
    late MockEventRepository mockRepository;
    late EventScreenCubit cubit;

    setUp(() {
      // Use EventLocalDataSource for testing
      final mockDataSource = MockEventLocalDataSource();
      mockRepository = MockEventRepository(mockDataSource);
      cubit = EventScreenCubit(mockRepository);
    });

    test('emits [EventScreenLoading, EventScreenLoaded] on successful fetch', () async {
      // Arrange
      const dateFilter = DateFilter.today;
      final sampleEvents = [
        Event.fromJson({
          'iconUrl': 'https://cdn-icons-png.flaticon.com/512/2158/2158416.png',
          'league': 'Serie A',
          'teams': 'Milan vs. Inter',
          'sportType': 'Football',
          'dateStarting': 'today',
          'timeStarting': '14:00',
        }),
      ];

      when(mockRepository.getEvents()).thenAnswer((_) async => sampleEvents);

      // Act & Assert
      await expectLater(
        cubit.stream,
        emitsInOrder([
          isA<EventScreenLoading>(),
          isA<EventScreenLoaded>(),
        ]),
      );

      // Act
      cubit.getEvents(dateFilter);

      await expectLater(
        cubit.stream,
        emits(isA<EventScreenLoaded>().having((state) => state.events, 'events', sampleEvents)),
      );
    });

    test('emits [EventScreenLoading, EventScreenError] on error during fetch', () async {
      // Arrange
      const dateFilter = DateFilter.today;
      const errorMessage = 'An error occurred';

      when(mockRepository.getEvents()).thenThrow(errorMessage);

      await expectLater(
        cubit.stream,
        emitsInOrder([
          isA<EventScreenLoading>(),
          isA<EventScreenError>(),
        ]),
      );

      cubit.getEvents(dateFilter);

      // Assert that the state contains the expected error message
      await expectLater(
        cubit.stream,
        emits(isA<EventScreenError>().having((state) => state.message, 'message', errorMessage)),
      );
    });
  });
}
