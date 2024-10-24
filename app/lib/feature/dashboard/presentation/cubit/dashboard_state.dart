import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/dashboard_entry.dart';
import '../../domain/entity/nav_drawer_entry.dart';

part 'dashboard_state.freezed.dart';

@freezed
sealed class DashboardState with _$DashboardState {
  const factory DashboardState.shellNavigationLoading() = DashboardLoading;
  const factory DashboardState.shellNavigationError() = DashboardError;
  const factory DashboardState.shellNavigationContent(
    NavDrawerEntries navDrawerEntries,
    DashboardEntries dashboardEntries,
  ) = DashboardContent;
}
