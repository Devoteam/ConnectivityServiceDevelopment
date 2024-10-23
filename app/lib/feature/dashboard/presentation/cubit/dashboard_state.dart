import 'package:connect_service_app/feature/dashboard/domain/entity/dashboard_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
sealed class DashboardState with _$DashboardState {
  const factory DashboardState.shellNavigationLoading() = DashboardLoading;
  const factory DashboardState.shellNavigationError() = DashboardError;
  const factory DashboardState.shellNavigationContent(List<DashboardEntry> entries) = DashboardContent;
}
