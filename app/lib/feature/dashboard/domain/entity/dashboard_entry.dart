import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../constants.dart';

part 'dashboard_entry.freezed.dart';

typedef DashboardEntries = List<DashboardEntry>;

@freezed
class DashboardEntry with _$DashboardEntry {
  const DashboardEntry._();

  const factory DashboardEntry({
    required int id,
    required String category,
    required String name,
    required String description,
  }) = _DashboardEntry;

   String get imageUrl => '$liveUrl/products/image/$id';
}
