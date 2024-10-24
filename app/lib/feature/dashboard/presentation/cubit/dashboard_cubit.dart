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

  void init() async {
    _dashboardService.readProducts().then(
      (entries) {
        final navDrawerEntries = _transformToNavDrawerEntries(entries);

        emit(
          DashboardContent(
            navDrawerEntries,
            entries,
          ),
        );
      },
    ).onError(
      (e, s) {
        emit(
          const DashboardError(),
        );
      },
    );
  }

  List<NavDrawerEntry> _transformToNavDrawerEntries(List<DashboardEntry> dashboardEntries) {
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
