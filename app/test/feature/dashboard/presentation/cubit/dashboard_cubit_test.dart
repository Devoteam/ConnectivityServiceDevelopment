// dashboard_cubit_test.dart
import 'package:bloc_test/bloc_test.dart';
import 'package:connect_service_app/feature/dashboard/domain/entity/dashboard_entry.dart';
import 'package:connect_service_app/feature/dashboard/domain/entity/nav_drawer_entry.dart';
import 'package:connect_service_app/feature/dashboard/domain/service/dashboard_service.dart';
import 'package:connect_service_app/feature/dashboard/presentation/cubit/dashboard_cubit.dart';
import 'package:connect_service_app/feature/dashboard/presentation/cubit/dashboard_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'dashboard_cubit_test.mocks.dart';

@GenerateMocks([
  DashboardService,
])
void main() {
  late MockDashboardService mockDashboardService;
  late DashboardCubit dashboardCubit;

  setUp(() {
    mockDashboardService = MockDashboardService();
    dashboardCubit = DashboardCubit(mockDashboardService);
  });

  tearDown(() {
    dashboardCubit.close();
  });

  group('init', () {
    final dashboardEntries = [
      DashboardEntry(id: 1, description: 'Test', name: 'Product 1', category: 'Category 1'),
      DashboardEntry(id: 2, description: 'Test', name: 'Product 2', category: 'Category 1'),
      DashboardEntry(id: 3, description: 'Test', name: 'Product 3', category: 'Category 2'),
    ];

    final navDrawerEntries = [
      NavDrawerEntry(category: 'Category 1', names: ['Product 1', 'Product 2']),
      NavDrawerEntry(category: 'Category 2', names: ['Product 3']),
    ];

    blocTest<DashboardCubit, DashboardState>(
      'emits [DashboardContent] when data is loaded successfully',
      build: () {
        when(mockDashboardService.readProducts()).thenAnswer((_) async => dashboardEntries);
        return dashboardCubit;
      },
      act: (cubit) async => await cubit.init(),
      expect: () => [
        DashboardLoading(),
        DashboardContent(navDrawerEntries, dashboardEntries),
      ],
    );

    blocTest<DashboardCubit, DashboardState>(
      'emits [DashboardError] when loading data fails',
      build: () {
        when(mockDashboardService.readProducts()).thenThrow( Exception('Failed to load data'));
        return dashboardCubit;
      },
      act: (cubit) async =>  await cubit.init(),
      expect: () => [
        DashboardLoading(),
        const DashboardError(),
      ],
    );
  });

  group('transformToNavDrawerEntries', () {
    test('should transform dashboard entries into nav drawer entries grouped by category', () {
      final dashboardEntries = [
        DashboardEntry(id: 1, description: 'Test', name: 'Product 1', category: 'Category 1'),
        DashboardEntry(id: 2, description: 'Test', name: 'Product 2', category: 'Category 1'),
        DashboardEntry(id: 3, description: 'Test', name: 'Product 3', category: 'Category 2'),
      ];

      final expectedNavDrawerEntries = [
        NavDrawerEntry(category: 'Category 1', names: ['Product 1', 'Product 2']),
        NavDrawerEntry(category: 'Category 2', names: ['Product 3']),
      ];

      final result = dashboardCubit.transformToNavDrawerEntries(dashboardEntries);

      expect(result, expectedNavDrawerEntries);
    });

    test('should return an empty list when no dashboard entries are provided', () {
      final result = dashboardCubit.transformToNavDrawerEntries([]);

      expect(result, <NavDrawerEntry>[]);
    });
  });
}
