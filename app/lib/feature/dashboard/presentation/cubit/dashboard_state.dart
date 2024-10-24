import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/dashboard_entry.dart';
import '../../domain/entity/nav_drawer_entry.dart';

part 'dashboard_state.freezed.dart';

@freezed
sealed class DashboardState with _$DashboardState {
  const factory DashboardState.dashboardLoading() = DashboardLoading;
  const factory DashboardState.dashboardError() = DashboardError;
  const factory DashboardState.dashboardContent(
    NavDrawerEntries navDrawerEntries,
    DashboardEntries dashboardEntries,
  ) = DashboardContent;
}
