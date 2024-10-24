import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/dashboard_entry.dart';
import '../../domain/entity/nav_drawer_entry.dart';
import '../../domain/service/dashboard_service.dart';
import 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final DashboardService _dashboardService;

  DashboardCubit(
    this._dashboardService,
  ) : super(
          const DashboardLoading(),
        );

  Future<void> init() async {
    try {
      emit(
        const DashboardLoading(),
      );

      final products = await _dashboardService.readProducts();
      final navDrawerEntries = transformToNavDrawerEntries(products);

      emit(
        DashboardContent(
          navDrawerEntries,
          products,
        ),
      );
    } catch (_) {
      emit(
        const DashboardError(),
      );
    }
  }

  List<NavDrawerEntry> transformToNavDrawerEntries(List<DashboardEntry> dashboardEntries) {
    final Map<String, List<String>> groupedByCategory = {};

    for (var entry in dashboardEntries) {
      if (!groupedByCategory.containsKey(entry.category)) {
        groupedByCategory[entry.category] = [];
      }
      groupedByCategory[entry.category]!.add(entry.name);
    }

    return groupedByCategory.entries.map((entry) {
      return NavDrawerEntry(
        category: entry.key,
        names: entry.value,
      );
    }).toList();
  }
}
