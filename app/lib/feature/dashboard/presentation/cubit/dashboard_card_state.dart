import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_card_state.freezed.dart';

@freezed
sealed class DashboardCardState with _$DashboardCardState {
  const factory DashboardCardState.dashboardLoading() = DashboardLoading;
  const factory DashboardCardState.dashboardContent(
    bool isActive,
  ) = DashboardContent;
}
