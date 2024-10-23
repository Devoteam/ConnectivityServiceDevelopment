import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_entry.freezed.dart';

@freezed
class DashboardEntry with _$DashboardEntry {
  const factory DashboardEntry({
    required int id,
    required String category,
    required String name,
    required String description,
    String? image,
  }) = _DashboardEntry;
}
