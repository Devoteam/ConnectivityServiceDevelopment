import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_entry_model.freezed.dart';
part 'dashboard_entry_model.g.dart';

@freezed
class DashboardEntryModel with _$DashboardEntryModel {
  const factory DashboardEntryModel({
    required int id,
    required String category,
    required String name,
    required String description,
    String? image,
  }) = _DashboardEntryModel;

  factory DashboardEntryModel.fromJson(Map<String, Object?> json) => _$DashboardEntryModelFromJson(json);
}
